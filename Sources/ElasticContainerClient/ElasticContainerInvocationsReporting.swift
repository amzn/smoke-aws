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
// ElasticContainerInvocationsReporting.swift
// ElasticContainerClient
//

import Foundation
import SmokeAWSCore
import SmokeAWSHttp
import ElasticContainerModel

/**
 Operation reporting for the ElasticContainerModel.
 */
public struct ElasticContainerInvocationsReporting<InvocationReportingType: SmokeAWSInvocationReporting> {
    let createCapacityProvider: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createService: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createTaskSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteAccountSetting: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteService: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteTaskSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deregisterContainerInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deregisterTaskDefinition: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeCapacityProviders: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeClusters: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeContainerInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeServices: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeTaskDefinition: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeTaskSets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let discoverPollEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listAccountSettings: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listClusters: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listContainerInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listServices: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listTagsForResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listTaskDefinitionFamilies: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listTaskDefinitions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putAccountSetting: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putAccountSettingDefault: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putClusterCapacityProviders: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let registerContainerInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let registerTaskDefinition: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let runTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let startTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let stopTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let submitAttachmentStateChanges: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let submitContainerStateChange: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let submitTaskStateChange: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let tagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let untagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateClusterSettings: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateContainerAgent: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateContainerInstancesState: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateService: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateServicePrimaryTaskSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateTaskSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

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
