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
// CloudformationModelOperations.swift
// CloudformationModel
//

import Foundation

/**
 Operation enumeration for the CloudformationModel.
 */
public enum CloudformationModelOperations: String, Hashable, CustomStringConvertible {
    case activateType = "ActivateType"
    case batchDescribeTypeConfigurations = "BatchDescribeTypeConfigurations"
    case cancelUpdateStack = "CancelUpdateStack"
    case continueUpdateRollback = "ContinueUpdateRollback"
    case createChangeSet = "CreateChangeSet"
    case createStack = "CreateStack"
    case createStackInstances = "CreateStackInstances"
    case createStackSet = "CreateStackSet"
    case deactivateType = "DeactivateType"
    case deleteChangeSet = "DeleteChangeSet"
    case deleteStack = "DeleteStack"
    case deleteStackInstances = "DeleteStackInstances"
    case deleteStackSet = "DeleteStackSet"
    case deregisterType = "DeregisterType"
    case describeAccountLimits = "DescribeAccountLimits"
    case describeChangeSet = "DescribeChangeSet"
    case describePublisher = "DescribePublisher"
    case describeStackDriftDetectionStatus = "DescribeStackDriftDetectionStatus"
    case describeStackEvents = "DescribeStackEvents"
    case describeStackInstance = "DescribeStackInstance"
    case describeStackResource = "DescribeStackResource"
    case describeStackResourceDrifts = "DescribeStackResourceDrifts"
    case describeStackResources = "DescribeStackResources"
    case describeStackSet = "DescribeStackSet"
    case describeStackSetOperation = "DescribeStackSetOperation"
    case describeStacks = "DescribeStacks"
    case describeType = "DescribeType"
    case describeTypeRegistration = "DescribeTypeRegistration"
    case detectStackDrift = "DetectStackDrift"
    case detectStackResourceDrift = "DetectStackResourceDrift"
    case detectStackSetDrift = "DetectStackSetDrift"
    case estimateTemplateCost = "EstimateTemplateCost"
    case executeChangeSet = "ExecuteChangeSet"
    case getStackPolicy = "GetStackPolicy"
    case getTemplate = "GetTemplate"
    case getTemplateSummary = "GetTemplateSummary"
    case listChangeSets = "ListChangeSets"
    case listExports = "ListExports"
    case listImports = "ListImports"
    case listStackInstances = "ListStackInstances"
    case listStackResources = "ListStackResources"
    case listStackSetOperationResults = "ListStackSetOperationResults"
    case listStackSetOperations = "ListStackSetOperations"
    case listStackSets = "ListStackSets"
    case listStacks = "ListStacks"
    case listTypeRegistrations = "ListTypeRegistrations"
    case listTypeVersions = "ListTypeVersions"
    case listTypes = "ListTypes"
    case publishType = "PublishType"
    case recordHandlerProgress = "RecordHandlerProgress"
    case registerPublisher = "RegisterPublisher"
    case registerType = "RegisterType"
    case setStackPolicy = "SetStackPolicy"
    case setTypeConfiguration = "SetTypeConfiguration"
    case setTypeDefaultVersion = "SetTypeDefaultVersion"
    case signalResource = "SignalResource"
    case stopStackSetOperation = "StopStackSetOperation"
    case testType = "TestType"
    case updateStack = "UpdateStack"
    case updateStackInstances = "UpdateStackInstances"
    case updateStackSet = "UpdateStackSet"
    case updateTerminationProtection = "UpdateTerminationProtection"
    case validateTemplate = "ValidateTemplate"

    public var description: String {
        return rawValue
    }

    public var operationPath: String {
        switch self {
        case .activateType:
            return "/"
        case .batchDescribeTypeConfigurations:
            return "/"
        case .cancelUpdateStack:
            return "/"
        case .continueUpdateRollback:
            return "/"
        case .createChangeSet:
            return "/"
        case .createStack:
            return "/"
        case .createStackInstances:
            return "/"
        case .createStackSet:
            return "/"
        case .deactivateType:
            return "/"
        case .deleteChangeSet:
            return "/"
        case .deleteStack:
            return "/"
        case .deleteStackInstances:
            return "/"
        case .deleteStackSet:
            return "/"
        case .deregisterType:
            return "/"
        case .describeAccountLimits:
            return "/"
        case .describeChangeSet:
            return "/"
        case .describePublisher:
            return "/"
        case .describeStackDriftDetectionStatus:
            return "/"
        case .describeStackEvents:
            return "/"
        case .describeStackInstance:
            return "/"
        case .describeStackResource:
            return "/"
        case .describeStackResourceDrifts:
            return "/"
        case .describeStackResources:
            return "/"
        case .describeStackSet:
            return "/"
        case .describeStackSetOperation:
            return "/"
        case .describeStacks:
            return "/"
        case .describeType:
            return "/"
        case .describeTypeRegistration:
            return "/"
        case .detectStackDrift:
            return "/"
        case .detectStackResourceDrift:
            return "/"
        case .detectStackSetDrift:
            return "/"
        case .estimateTemplateCost:
            return "/"
        case .executeChangeSet:
            return "/"
        case .getStackPolicy:
            return "/"
        case .getTemplate:
            return "/"
        case .getTemplateSummary:
            return "/"
        case .listChangeSets:
            return "/"
        case .listExports:
            return "/"
        case .listImports:
            return "/"
        case .listStackInstances:
            return "/"
        case .listStackResources:
            return "/"
        case .listStackSetOperationResults:
            return "/"
        case .listStackSetOperations:
            return "/"
        case .listStackSets:
            return "/"
        case .listStacks:
            return "/"
        case .listTypeRegistrations:
            return "/"
        case .listTypeVersions:
            return "/"
        case .listTypes:
            return "/"
        case .publishType:
            return "/"
        case .recordHandlerProgress:
            return "/"
        case .registerPublisher:
            return "/"
        case .registerType:
            return "/"
        case .setStackPolicy:
            return "/"
        case .setTypeConfiguration:
            return "/"
        case .setTypeDefaultVersion:
            return "/"
        case .signalResource:
            return "/"
        case .stopStackSetOperation:
            return "/"
        case .testType:
            return "/"
        case .updateStack:
            return "/"
        case .updateStackInstances:
            return "/"
        case .updateStackSet:
            return "/"
        case .updateTerminationProtection:
            return "/"
        case .validateTemplate:
            return "/"
        }
    }
}
