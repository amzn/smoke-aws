// Copyright 2018-2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// CloudformationInvocationsReporting.swift
// CloudformationClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import CloudformationModel

/**
 Invocations reporting for the CloudformationModel.
 */
public struct CloudformationInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting> {
    public let activateOrganizationsAccess: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let activateType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let batchDescribeTypeConfigurations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let cancelUpdateStack: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let continueUpdateRollback: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createChangeSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createStack: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createStackInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createStackSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deactivateOrganizationsAccess: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deactivateType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteChangeSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteStack: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteStackInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteStackSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deregisterType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeAccountLimits: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeChangeSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeChangeSetHooks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeOrganizationsAccess: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describePublisher: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeStackDriftDetectionStatus: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeStackEvents: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeStackInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeStackResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeStackResourceDrifts: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeStackResources: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeStackSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeStackSetOperation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeStacks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeTypeRegistration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let detectStackDrift: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let detectStackResourceDrift: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let detectStackSetDrift: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let estimateTemplateCost: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let executeChangeSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getStackPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getTemplate: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getTemplateSummary: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let importStacksToStackSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listChangeSets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listExports: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listImports: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listStackInstanceResourceDrifts: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listStackInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listStackResources: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listStackSetOperationResults: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listStackSetOperations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listStackSets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listStacks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listTypeRegistrations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listTypeVersions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listTypes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let publishType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let recordHandlerProgress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let registerPublisher: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let registerType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let rollbackStack: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let setStackPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let setTypeConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let setTypeDefaultVersion: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let signalResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let stopStackSetOperation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let testType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateStack: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateStackInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateStackSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateTerminationProtection: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let validateTemplate: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: CloudformationOperationsReporting) {
        self.activateOrganizationsAccess = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.activateOrganizationsAccess)
        self.activateType = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.activateType)
        self.batchDescribeTypeConfigurations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.batchDescribeTypeConfigurations)
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
        self.deactivateOrganizationsAccess = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deactivateOrganizationsAccess)
        self.deactivateType = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deactivateType)
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
        self.describeChangeSetHooks = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeChangeSetHooks)
        self.describeOrganizationsAccess = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeOrganizationsAccess)
        self.describePublisher = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describePublisher)
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
        self.importStacksToStackSet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.importStacksToStackSet)
        self.listChangeSets = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listChangeSets)
        self.listExports = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listExports)
        self.listImports = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listImports)
        self.listStackInstanceResourceDrifts = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listStackInstanceResourceDrifts)
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
        self.publishType = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.publishType)
        self.recordHandlerProgress = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.recordHandlerProgress)
        self.registerPublisher = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.registerPublisher)
        self.registerType = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.registerType)
        self.rollbackStack = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.rollbackStack)
        self.setStackPolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.setStackPolicy)
        self.setTypeConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.setTypeConfiguration)
        self.setTypeDefaultVersion = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.setTypeDefaultVersion)
        self.signalResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.signalResource)
        self.stopStackSetOperation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.stopStackSetOperation)
        self.testType = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.testType)
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
