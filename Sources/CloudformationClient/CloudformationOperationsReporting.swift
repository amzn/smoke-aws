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
    let cancelUpdateStack: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let continueUpdateRollback: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let createChangeSet: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let createStack: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let createStackInstances: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let createStackSet: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let deleteChangeSet: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let deleteStack: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let deleteStackInstances: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let deleteStackSet: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let deregisterType: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let describeAccountLimits: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let describeChangeSet: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let describeStackDriftDetectionStatus: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let describeStackEvents: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let describeStackInstance: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let describeStackResource: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let describeStackResourceDrifts: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let describeStackResources: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let describeStackSet: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let describeStackSetOperation: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let describeStacks: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let describeType: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let describeTypeRegistration: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let detectStackDrift: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let detectStackResourceDrift: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let detectStackSetDrift: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let estimateTemplateCost: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let executeChangeSet: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let getStackPolicy: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let getTemplate: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let getTemplateSummary: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let listChangeSets: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let listExports: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let listImports: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let listStackInstances: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let listStackResources: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let listStackSetOperationResults: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let listStackSetOperations: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let listStackSets: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let listStacks: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let listTypeRegistrations: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let listTypeVersions: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let listTypes: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let recordHandlerProgress: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let registerType: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let setStackPolicy: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let setTypeDefaultVersion: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let signalResource: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let stopStackSetOperation: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let updateStack: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let updateStackInstances: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let updateStackSet: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let updateTerminationProtection: StandardSmokeAWSOperationReporting<CloudformationModelOperations>
    let validateTemplate: StandardSmokeAWSOperationReporting<CloudformationModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<CloudformationModelOperations>) {
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
        self.recordHandlerProgress = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .recordHandlerProgress, configuration: reportingConfiguration)
        self.registerType = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .registerType, configuration: reportingConfiguration)
        self.setStackPolicy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .setStackPolicy, configuration: reportingConfiguration)
        self.setTypeDefaultVersion = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .setTypeDefaultVersion, configuration: reportingConfiguration)
        self.signalResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .signalResource, configuration: reportingConfiguration)
        self.stopStackSetOperation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .stopStackSetOperation, configuration: reportingConfiguration)
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
