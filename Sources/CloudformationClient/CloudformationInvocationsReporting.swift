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
// CloudformationInvocationsReporting.swift
// CloudformationClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import CloudformationModel

/**
 Operation reporting for the CloudformationModel.
 */
public struct CloudformationInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting> {
    let cancelUpdateStack: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let continueUpdateRollback: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createChangeSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createStack: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createStackInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createStackSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteChangeSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteStack: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteStackInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteStackSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deregisterType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeAccountLimits: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeChangeSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeStackDriftDetectionStatus: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeStackEvents: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeStackInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeStackResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeStackResourceDrifts: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeStackResources: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeStackSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeStackSetOperation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeStacks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeTypeRegistration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let detectStackDrift: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let detectStackResourceDrift: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let detectStackSetDrift: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let estimateTemplateCost: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let executeChangeSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getStackPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getTemplate: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getTemplateSummary: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listChangeSets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listExports: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listImports: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listStackInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listStackResources: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listStackSetOperationResults: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listStackSetOperations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listStackSets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listStacks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listTypeRegistrations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listTypeVersions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listTypes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let recordHandlerProgress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let registerType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let setStackPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let setTypeDefaultVersion: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let signalResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let stopStackSetOperation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateStack: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateStackInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateStackSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateTerminationProtection: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let validateTemplate: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: CloudformationOperationsReporting) {
        self.cancelUpdateStack = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.cancelUpdateStack)
        self.continueUpdateRollback = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.continueUpdateRollback)
        self.createChangeSet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createChangeSet)
        self.createStack = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createStack)
        self.createStackInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createStackInstances)
        self.createStackSet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createStackSet)
        self.deleteChangeSet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteChangeSet)
        self.deleteStack = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteStack)
        self.deleteStackInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteStackInstances)
        self.deleteStackSet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteStackSet)
        self.deregisterType = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deregisterType)
        self.describeAccountLimits = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeAccountLimits)
        self.describeChangeSet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeChangeSet)
        self.describeStackDriftDetectionStatus = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeStackDriftDetectionStatus)
        self.describeStackEvents = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeStackEvents)
        self.describeStackInstance = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeStackInstance)
        self.describeStackResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeStackResource)
        self.describeStackResourceDrifts = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeStackResourceDrifts)
        self.describeStackResources = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeStackResources)
        self.describeStackSet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeStackSet)
        self.describeStackSetOperation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeStackSetOperation)
        self.describeStacks = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeStacks)
        self.describeType = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeType)
        self.describeTypeRegistration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTypeRegistration)
        self.detectStackDrift = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.detectStackDrift)
        self.detectStackResourceDrift = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.detectStackResourceDrift)
        self.detectStackSetDrift = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.detectStackSetDrift)
        self.estimateTemplateCost = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.estimateTemplateCost)
        self.executeChangeSet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.executeChangeSet)
        self.getStackPolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getStackPolicy)
        self.getTemplate = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getTemplate)
        self.getTemplateSummary = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getTemplateSummary)
        self.listChangeSets = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listChangeSets)
        self.listExports = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listExports)
        self.listImports = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listImports)
        self.listStackInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listStackInstances)
        self.listStackResources = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listStackResources)
        self.listStackSetOperationResults = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listStackSetOperationResults)
        self.listStackSetOperations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listStackSetOperations)
        self.listStackSets = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listStackSets)
        self.listStacks = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listStacks)
        self.listTypeRegistrations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTypeRegistrations)
        self.listTypeVersions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTypeVersions)
        self.listTypes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTypes)
        self.recordHandlerProgress = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.recordHandlerProgress)
        self.registerType = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.registerType)
        self.setStackPolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.setStackPolicy)
        self.setTypeDefaultVersion = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.setTypeDefaultVersion)
        self.signalResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.signalResource)
        self.stopStackSetOperation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.stopStackSetOperation)
        self.updateStack = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateStack)
        self.updateStackInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateStackInstances)
        self.updateStackSet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateStackSet)
        self.updateTerminationProtection = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateTerminationProtection)
        self.validateTemplate = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.validateTemplate)
    }
}
