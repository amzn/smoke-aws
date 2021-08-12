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
// CloudformationOperationsReporting.swift
// CloudformationClient
//

import Foundation
import SmokeAWSCore
import CloudformationModel

/**
 Operation reporting for the CloudformationModel.
 */
public struct CloudformationOperationsReporting {
    public let activateType: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let batchDescribeTypeConfigurations: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let cancelUpdateStack: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let continueUpdateRollback: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let createChangeSet: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let createStack: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let createStackInstances: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let createStackSet: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let deactivateType: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let deleteChangeSet: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let deleteStack: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let deleteStackInstances: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let deleteStackSet: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let deregisterType: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let describeAccountLimits: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let describeChangeSet: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let describePublisher: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let describeStackDriftDetectionStatus: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let describeStackEvents: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let describeStackInstance: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let describeStackResource: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let describeStackResourceDrifts: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let describeStackResources: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let describeStackSet: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let describeStackSetOperation: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let describeStacks: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let describeType: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let describeTypeRegistration: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let detectStackDrift: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let detectStackResourceDrift: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let detectStackSetDrift: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let estimateTemplateCost: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let executeChangeSet: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let getStackPolicy: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let getTemplate: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let getTemplateSummary: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let importStacksToStackSet: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let listChangeSets: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let listExports: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let listImports: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let listStackInstances: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let listStackResources: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let listStackSetOperationResults: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let listStackSetOperations: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let listStackSets: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let listStacks: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let listTypeRegistrations: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let listTypeVersions: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let listTypes: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let publishType: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let recordHandlerProgress: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let registerPublisher: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let registerType: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let setStackPolicy: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let setTypeConfiguration: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let setTypeDefaultVersion: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let signalResource: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let stopStackSetOperation: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let testType: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let updateStack: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let updateStackInstances: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let updateStackSet: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let updateTerminationProtection: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    public let validateTemplate: StandardSmokeAWSOperationReporting<CloudformationModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<CloudformationModelOperations>) {
        self.activateType = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .activateType, configuration: reportingConfiguration)
        self.batchDescribeTypeConfigurations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .batchDescribeTypeConfigurations, configuration: reportingConfiguration)
        self.cancelUpdateStack = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .cancelUpdateStack, configuration: reportingConfiguration)
        self.continueUpdateRollback = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .continueUpdateRollback, configuration: reportingConfiguration)
        self.createChangeSet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createChangeSet, configuration: reportingConfiguration)
        self.createStack = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createStack, configuration: reportingConfiguration)
        self.createStackInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createStackInstances, configuration: reportingConfiguration)
        self.createStackSet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createStackSet, configuration: reportingConfiguration)
        self.deactivateType = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deactivateType, configuration: reportingConfiguration)
        self.deleteChangeSet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteChangeSet, configuration: reportingConfiguration)
        self.deleteStack = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteStack, configuration: reportingConfiguration)
        self.deleteStackInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteStackInstances, configuration: reportingConfiguration)
        self.deleteStackSet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteStackSet, configuration: reportingConfiguration)
        self.deregisterType = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deregisterType, configuration: reportingConfiguration)
        self.describeAccountLimits = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeAccountLimits, configuration: reportingConfiguration)
        self.describeChangeSet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeChangeSet, configuration: reportingConfiguration)
        self.describePublisher = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describePublisher, configuration: reportingConfiguration)
        self.describeStackDriftDetectionStatus = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeStackDriftDetectionStatus, configuration: reportingConfiguration)
        self.describeStackEvents = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeStackEvents, configuration: reportingConfiguration)
        self.describeStackInstance = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeStackInstance, configuration: reportingConfiguration)
        self.describeStackResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeStackResource, configuration: reportingConfiguration)
        self.describeStackResourceDrifts = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeStackResourceDrifts, configuration: reportingConfiguration)
        self.describeStackResources = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeStackResources, configuration: reportingConfiguration)
        self.describeStackSet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeStackSet, configuration: reportingConfiguration)
        self.describeStackSetOperation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeStackSetOperation, configuration: reportingConfiguration)
        self.describeStacks = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeStacks, configuration: reportingConfiguration)
        self.describeType = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeType, configuration: reportingConfiguration)
        self.describeTypeRegistration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTypeRegistration, configuration: reportingConfiguration)
        self.detectStackDrift = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .detectStackDrift, configuration: reportingConfiguration)
        self.detectStackResourceDrift = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .detectStackResourceDrift, configuration: reportingConfiguration)
        self.detectStackSetDrift = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .detectStackSetDrift, configuration: reportingConfiguration)
        self.estimateTemplateCost = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .estimateTemplateCost, configuration: reportingConfiguration)
        self.executeChangeSet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .executeChangeSet, configuration: reportingConfiguration)
        self.getStackPolicy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getStackPolicy, configuration: reportingConfiguration)
        self.getTemplate = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getTemplate, configuration: reportingConfiguration)
        self.getTemplateSummary = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getTemplateSummary, configuration: reportingConfiguration)
        self.importStacksToStackSet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .importStacksToStackSet, configuration: reportingConfiguration)
        self.listChangeSets = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listChangeSets, configuration: reportingConfiguration)
        self.listExports = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listExports, configuration: reportingConfiguration)
        self.listImports = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listImports, configuration: reportingConfiguration)
        self.listStackInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listStackInstances, configuration: reportingConfiguration)
        self.listStackResources = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listStackResources, configuration: reportingConfiguration)
        self.listStackSetOperationResults = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listStackSetOperationResults, configuration: reportingConfiguration)
        self.listStackSetOperations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listStackSetOperations, configuration: reportingConfiguration)
        self.listStackSets = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listStackSets, configuration: reportingConfiguration)
        self.listStacks = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listStacks, configuration: reportingConfiguration)
        self.listTypeRegistrations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTypeRegistrations, configuration: reportingConfiguration)
        self.listTypeVersions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTypeVersions, configuration: reportingConfiguration)
        self.listTypes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTypes, configuration: reportingConfiguration)
        self.publishType = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .publishType, configuration: reportingConfiguration)
        self.recordHandlerProgress = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .recordHandlerProgress, configuration: reportingConfiguration)
        self.registerPublisher = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .registerPublisher, configuration: reportingConfiguration)
        self.registerType = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .registerType, configuration: reportingConfiguration)
        self.setStackPolicy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .setStackPolicy, configuration: reportingConfiguration)
        self.setTypeConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .setTypeConfiguration, configuration: reportingConfiguration)
        self.setTypeDefaultVersion = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .setTypeDefaultVersion, configuration: reportingConfiguration)
        self.signalResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .signalResource, configuration: reportingConfiguration)
        self.stopStackSetOperation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .stopStackSetOperation, configuration: reportingConfiguration)
        self.testType = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .testType, configuration: reportingConfiguration)
        self.updateStack = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateStack, configuration: reportingConfiguration)
        self.updateStackInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateStackInstances, configuration: reportingConfiguration)
        self.updateStackSet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateStackSet, configuration: reportingConfiguration)
        self.updateTerminationProtection = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateTerminationProtection, configuration: reportingConfiguration)
        self.validateTemplate = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .validateTemplate, configuration: reportingConfiguration)
    }
}
