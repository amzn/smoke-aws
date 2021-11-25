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
// CloudformationModelDefaultInstances.swift
// CloudformationModel
//

import Foundation

public extension AccountGateResult {
    /**
     Default instance of the AccountGateResult structure.
     */
    static let __default: CloudformationModel.AccountGateResult = {
        let defaultInstance = CloudformationModel.AccountGateResult(
            status: nil,
            statusReason: nil)

        return defaultInstance
    }()
}

public extension AccountLimit {
    /**
     Default instance of the AccountLimit structure.
     */
    static let __default: CloudformationModel.AccountLimit = {
        let defaultInstance = CloudformationModel.AccountLimit(
            name: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension ActivateTypeInput {
    /**
     Default instance of the ActivateTypeInput structure.
     */
    static let __default: CloudformationModel.ActivateTypeInput = {
        let defaultInstance = CloudformationModel.ActivateTypeInput(
            autoUpdate: nil,
            executionRoleArn: nil,
            loggingConfig: nil,
            majorVersion: nil,
            publicTypeArn: nil,
            publisherId: nil,
            type: nil,
            typeName: nil,
            typeNameAlias: nil,
            versionBump: nil)

        return defaultInstance
    }()
}

public extension ActivateTypeOutput {
    /**
     Default instance of the ActivateTypeOutput structure.
     */
    static let __default: CloudformationModel.ActivateTypeOutput = {
        let defaultInstance = CloudformationModel.ActivateTypeOutput(
            arn: nil)

        return defaultInstance
    }()
}

public extension ActivateTypeOutputForActivateType {
    /**
     Default instance of the ActivateTypeOutputForActivateType structure.
     */
    static let __default: CloudformationModel.ActivateTypeOutputForActivateType = {
        let defaultInstance = CloudformationModel.ActivateTypeOutputForActivateType(
            activateTypeResult: ActivateTypeOutput.__default)

        return defaultInstance
    }()
}

public extension AlreadyExistsException {
    /**
     Default instance of the AlreadyExistsException structure.
     */
    static let __default: CloudformationModel.AlreadyExistsException = {
        let defaultInstance = CloudformationModel.AlreadyExistsException()

        return defaultInstance
    }()
}

public extension AutoDeployment {
    /**
     Default instance of the AutoDeployment structure.
     */
    static let __default: CloudformationModel.AutoDeployment = {
        let defaultInstance = CloudformationModel.AutoDeployment(
            enabled: nil,
            retainStacksOnAccountRemoval: nil)

        return defaultInstance
    }()
}

public extension BatchDescribeTypeConfigurationsError {
    /**
     Default instance of the BatchDescribeTypeConfigurationsError structure.
     */
    static let __default: CloudformationModel.BatchDescribeTypeConfigurationsError = {
        let defaultInstance = CloudformationModel.BatchDescribeTypeConfigurationsError(
            errorCode: nil,
            errorMessage: nil,
            typeConfigurationIdentifier: nil)

        return defaultInstance
    }()
}

public extension BatchDescribeTypeConfigurationsInput {
    /**
     Default instance of the BatchDescribeTypeConfigurationsInput structure.
     */
    static let __default: CloudformationModel.BatchDescribeTypeConfigurationsInput = {
        let defaultInstance = CloudformationModel.BatchDescribeTypeConfigurationsInput(
            typeConfigurationIdentifiers: [TypeConfigurationIdentifier.__default])

        return defaultInstance
    }()
}

public extension BatchDescribeTypeConfigurationsOutput {
    /**
     Default instance of the BatchDescribeTypeConfigurationsOutput structure.
     */
    static let __default: CloudformationModel.BatchDescribeTypeConfigurationsOutput = {
        let defaultInstance = CloudformationModel.BatchDescribeTypeConfigurationsOutput(
            errors: nil,
            typeConfigurations: nil,
            unprocessedTypeConfigurations: nil)

        return defaultInstance
    }()
}

public extension BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations {
    /**
     Default instance of the BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations structure.
     */
    static let __default: CloudformationModel.BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations = {
        let defaultInstance = CloudformationModel.BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations(
            batchDescribeTypeConfigurationsResult: BatchDescribeTypeConfigurationsOutput.__default)

        return defaultInstance
    }()
}

public extension CFNRegistryException {
    /**
     Default instance of the CFNRegistryException structure.
     */
    static let __default: CloudformationModel.CFNRegistryException = {
        let defaultInstance = CloudformationModel.CFNRegistryException(
            message: nil)

        return defaultInstance
    }()
}

public extension CancelUpdateStackInput {
    /**
     Default instance of the CancelUpdateStackInput structure.
     */
    static let __default: CloudformationModel.CancelUpdateStackInput = {
        let defaultInstance = CloudformationModel.CancelUpdateStackInput(
            clientRequestToken: nil,
            stackName: "value")

        return defaultInstance
    }()
}

public extension Change {
    /**
     Default instance of the Change structure.
     */
    static let __default: CloudformationModel.Change = {
        let defaultInstance = CloudformationModel.Change(
            resourceChange: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension ChangeSetNotFoundException {
    /**
     Default instance of the ChangeSetNotFoundException structure.
     */
    static let __default: CloudformationModel.ChangeSetNotFoundException = {
        let defaultInstance = CloudformationModel.ChangeSetNotFoundException()

        return defaultInstance
    }()
}

public extension ChangeSetSummary {
    /**
     Default instance of the ChangeSetSummary structure.
     */
    static let __default: CloudformationModel.ChangeSetSummary = {
        let defaultInstance = CloudformationModel.ChangeSetSummary(
            changeSetId: nil,
            changeSetName: nil,
            creationTime: nil,
            description: nil,
            executionStatus: nil,
            includeNestedStacks: nil,
            parentChangeSetId: nil,
            rootChangeSetId: nil,
            stackId: nil,
            stackName: nil,
            status: nil,
            statusReason: nil)

        return defaultInstance
    }()
}

public extension ContinueUpdateRollbackInput {
    /**
     Default instance of the ContinueUpdateRollbackInput structure.
     */
    static let __default: CloudformationModel.ContinueUpdateRollbackInput = {
        let defaultInstance = CloudformationModel.ContinueUpdateRollbackInput(
            clientRequestToken: nil,
            resourcesToSkip: nil,
            roleARN: nil,
            stackName: "0")

        return defaultInstance
    }()
}

public extension ContinueUpdateRollbackOutput {
    /**
     Default instance of the ContinueUpdateRollbackOutput structure.
     */
    static let __default: CloudformationModel.ContinueUpdateRollbackOutput = {
        let defaultInstance = CloudformationModel.ContinueUpdateRollbackOutput()

        return defaultInstance
    }()
}

public extension ContinueUpdateRollbackOutputForContinueUpdateRollback {
    /**
     Default instance of the ContinueUpdateRollbackOutputForContinueUpdateRollback structure.
     */
    static let __default: CloudformationModel.ContinueUpdateRollbackOutputForContinueUpdateRollback = {
        let defaultInstance = CloudformationModel.ContinueUpdateRollbackOutputForContinueUpdateRollback(
            continueUpdateRollbackResult: ContinueUpdateRollbackOutput.__default)

        return defaultInstance
    }()
}

public extension CreateChangeSetInput {
    /**
     Default instance of the CreateChangeSetInput structure.
     */
    static let __default: CloudformationModel.CreateChangeSetInput = {
        let defaultInstance = CloudformationModel.CreateChangeSetInput(
            capabilities: nil,
            changeSetName: "0",
            changeSetType: nil,
            clientToken: nil,
            description: nil,
            includeNestedStacks: nil,
            notificationARNs: nil,
            parameters: nil,
            resourceTypes: nil,
            resourcesToImport: nil,
            roleARN: nil,
            rollbackConfiguration: nil,
            stackName: "0",
            tags: nil,
            templateBody: nil,
            templateURL: nil,
            usePreviousTemplate: nil)

        return defaultInstance
    }()
}

public extension CreateChangeSetOutput {
    /**
     Default instance of the CreateChangeSetOutput structure.
     */
    static let __default: CloudformationModel.CreateChangeSetOutput = {
        let defaultInstance = CloudformationModel.CreateChangeSetOutput(
            id: nil,
            stackId: nil)

        return defaultInstance
    }()
}

public extension CreateChangeSetOutputForCreateChangeSet {
    /**
     Default instance of the CreateChangeSetOutputForCreateChangeSet structure.
     */
    static let __default: CloudformationModel.CreateChangeSetOutputForCreateChangeSet = {
        let defaultInstance = CloudformationModel.CreateChangeSetOutputForCreateChangeSet(
            createChangeSetResult: CreateChangeSetOutput.__default)

        return defaultInstance
    }()
}

public extension CreateStackInput {
    /**
     Default instance of the CreateStackInput structure.
     */
    static let __default: CloudformationModel.CreateStackInput = {
        let defaultInstance = CloudformationModel.CreateStackInput(
            capabilities: nil,
            clientRequestToken: nil,
            disableRollback: nil,
            enableTerminationProtection: nil,
            notificationARNs: nil,
            onFailure: nil,
            parameters: nil,
            resourceTypes: nil,
            roleARN: nil,
            rollbackConfiguration: nil,
            stackName: "value",
            stackPolicyBody: nil,
            stackPolicyURL: nil,
            tags: nil,
            templateBody: nil,
            templateURL: nil,
            timeoutInMinutes: nil)

        return defaultInstance
    }()
}

public extension CreateStackInstancesInput {
    /**
     Default instance of the CreateStackInstancesInput structure.
     */
    static let __default: CloudformationModel.CreateStackInstancesInput = {
        let defaultInstance = CloudformationModel.CreateStackInstancesInput(
            accounts: nil,
            callAs: nil,
            deploymentTargets: nil,
            operationId: nil,
            operationPreferences: nil,
            parameterOverrides: nil,
            regions: [],
            stackSetName: "value")

        return defaultInstance
    }()
}

public extension CreateStackInstancesOutput {
    /**
     Default instance of the CreateStackInstancesOutput structure.
     */
    static let __default: CloudformationModel.CreateStackInstancesOutput = {
        let defaultInstance = CloudformationModel.CreateStackInstancesOutput(
            operationId: nil)

        return defaultInstance
    }()
}

public extension CreateStackInstancesOutputForCreateStackInstances {
    /**
     Default instance of the CreateStackInstancesOutputForCreateStackInstances structure.
     */
    static let __default: CloudformationModel.CreateStackInstancesOutputForCreateStackInstances = {
        let defaultInstance = CloudformationModel.CreateStackInstancesOutputForCreateStackInstances(
            createStackInstancesResult: CreateStackInstancesOutput.__default)

        return defaultInstance
    }()
}

public extension CreateStackOutput {
    /**
     Default instance of the CreateStackOutput structure.
     */
    static let __default: CloudformationModel.CreateStackOutput = {
        let defaultInstance = CloudformationModel.CreateStackOutput(
            stackId: nil)

        return defaultInstance
    }()
}

public extension CreateStackOutputForCreateStack {
    /**
     Default instance of the CreateStackOutputForCreateStack structure.
     */
    static let __default: CloudformationModel.CreateStackOutputForCreateStack = {
        let defaultInstance = CloudformationModel.CreateStackOutputForCreateStack(
            createStackResult: CreateStackOutput.__default)

        return defaultInstance
    }()
}

public extension CreateStackSetInput {
    /**
     Default instance of the CreateStackSetInput structure.
     */
    static let __default: CloudformationModel.CreateStackSetInput = {
        let defaultInstance = CloudformationModel.CreateStackSetInput(
            administrationRoleARN: nil,
            autoDeployment: nil,
            callAs: nil,
            capabilities: nil,
            clientRequestToken: nil,
            description: nil,
            executionRoleName: nil,
            managedExecution: nil,
            parameters: nil,
            permissionModel: nil,
            stackId: nil,
            stackSetName: "value",
            tags: nil,
            templateBody: nil,
            templateURL: nil)

        return defaultInstance
    }()
}

public extension CreateStackSetOutput {
    /**
     Default instance of the CreateStackSetOutput structure.
     */
    static let __default: CloudformationModel.CreateStackSetOutput = {
        let defaultInstance = CloudformationModel.CreateStackSetOutput(
            stackSetId: nil)

        return defaultInstance
    }()
}

public extension CreateStackSetOutputForCreateStackSet {
    /**
     Default instance of the CreateStackSetOutputForCreateStackSet structure.
     */
    static let __default: CloudformationModel.CreateStackSetOutputForCreateStackSet = {
        let defaultInstance = CloudformationModel.CreateStackSetOutputForCreateStackSet(
            createStackSetResult: CreateStackSetOutput.__default)

        return defaultInstance
    }()
}

public extension CreatedButModifiedException {
    /**
     Default instance of the CreatedButModifiedException structure.
     */
    static let __default: CloudformationModel.CreatedButModifiedException = {
        let defaultInstance = CloudformationModel.CreatedButModifiedException()

        return defaultInstance
    }()
}

public extension DeactivateTypeInput {
    /**
     Default instance of the DeactivateTypeInput structure.
     */
    static let __default: CloudformationModel.DeactivateTypeInput = {
        let defaultInstance = CloudformationModel.DeactivateTypeInput(
            arn: nil,
            type: nil,
            typeName: nil)

        return defaultInstance
    }()
}

public extension DeactivateTypeOutput {
    /**
     Default instance of the DeactivateTypeOutput structure.
     */
    static let __default: CloudformationModel.DeactivateTypeOutput = {
        let defaultInstance = CloudformationModel.DeactivateTypeOutput()

        return defaultInstance
    }()
}

public extension DeactivateTypeOutputForDeactivateType {
    /**
     Default instance of the DeactivateTypeOutputForDeactivateType structure.
     */
    static let __default: CloudformationModel.DeactivateTypeOutputForDeactivateType = {
        let defaultInstance = CloudformationModel.DeactivateTypeOutputForDeactivateType(
            deactivateTypeResult: DeactivateTypeOutput.__default)

        return defaultInstance
    }()
}

public extension DeleteChangeSetInput {
    /**
     Default instance of the DeleteChangeSetInput structure.
     */
    static let __default: CloudformationModel.DeleteChangeSetInput = {
        let defaultInstance = CloudformationModel.DeleteChangeSetInput(
            changeSetName: "0",
            stackName: nil)

        return defaultInstance
    }()
}

public extension DeleteChangeSetOutput {
    /**
     Default instance of the DeleteChangeSetOutput structure.
     */
    static let __default: CloudformationModel.DeleteChangeSetOutput = {
        let defaultInstance = CloudformationModel.DeleteChangeSetOutput()

        return defaultInstance
    }()
}

public extension DeleteChangeSetOutputForDeleteChangeSet {
    /**
     Default instance of the DeleteChangeSetOutputForDeleteChangeSet structure.
     */
    static let __default: CloudformationModel.DeleteChangeSetOutputForDeleteChangeSet = {
        let defaultInstance = CloudformationModel.DeleteChangeSetOutputForDeleteChangeSet(
            deleteChangeSetResult: DeleteChangeSetOutput.__default)

        return defaultInstance
    }()
}

public extension DeleteStackInput {
    /**
     Default instance of the DeleteStackInput structure.
     */
    static let __default: CloudformationModel.DeleteStackInput = {
        let defaultInstance = CloudformationModel.DeleteStackInput(
            clientRequestToken: nil,
            retainResources: nil,
            roleARN: nil,
            stackName: "value")

        return defaultInstance
    }()
}

public extension DeleteStackInstancesInput {
    /**
     Default instance of the DeleteStackInstancesInput structure.
     */
    static let __default: CloudformationModel.DeleteStackInstancesInput = {
        let defaultInstance = CloudformationModel.DeleteStackInstancesInput(
            accounts: nil,
            callAs: nil,
            deploymentTargets: nil,
            operationId: nil,
            operationPreferences: nil,
            regions: [],
            retainStacks: false,
            stackSetName: "value")

        return defaultInstance
    }()
}

public extension DeleteStackInstancesOutput {
    /**
     Default instance of the DeleteStackInstancesOutput structure.
     */
    static let __default: CloudformationModel.DeleteStackInstancesOutput = {
        let defaultInstance = CloudformationModel.DeleteStackInstancesOutput(
            operationId: nil)

        return defaultInstance
    }()
}

public extension DeleteStackInstancesOutputForDeleteStackInstances {
    /**
     Default instance of the DeleteStackInstancesOutputForDeleteStackInstances structure.
     */
    static let __default: CloudformationModel.DeleteStackInstancesOutputForDeleteStackInstances = {
        let defaultInstance = CloudformationModel.DeleteStackInstancesOutputForDeleteStackInstances(
            deleteStackInstancesResult: DeleteStackInstancesOutput.__default)

        return defaultInstance
    }()
}

public extension DeleteStackSetInput {
    /**
     Default instance of the DeleteStackSetInput structure.
     */
    static let __default: CloudformationModel.DeleteStackSetInput = {
        let defaultInstance = CloudformationModel.DeleteStackSetInput(
            callAs: nil,
            stackSetName: "value")

        return defaultInstance
    }()
}

public extension DeleteStackSetOutput {
    /**
     Default instance of the DeleteStackSetOutput structure.
     */
    static let __default: CloudformationModel.DeleteStackSetOutput = {
        let defaultInstance = CloudformationModel.DeleteStackSetOutput()

        return defaultInstance
    }()
}

public extension DeleteStackSetOutputForDeleteStackSet {
    /**
     Default instance of the DeleteStackSetOutputForDeleteStackSet structure.
     */
    static let __default: CloudformationModel.DeleteStackSetOutputForDeleteStackSet = {
        let defaultInstance = CloudformationModel.DeleteStackSetOutputForDeleteStackSet(
            deleteStackSetResult: DeleteStackSetOutput.__default)

        return defaultInstance
    }()
}

public extension DeploymentTargets {
    /**
     Default instance of the DeploymentTargets structure.
     */
    static let __default: CloudformationModel.DeploymentTargets = {
        let defaultInstance = CloudformationModel.DeploymentTargets(
            accounts: nil,
            accountsUrl: nil,
            organizationalUnitIds: nil)

        return defaultInstance
    }()
}

public extension DeregisterTypeInput {
    /**
     Default instance of the DeregisterTypeInput structure.
     */
    static let __default: CloudformationModel.DeregisterTypeInput = {
        let defaultInstance = CloudformationModel.DeregisterTypeInput(
            arn: nil,
            type: nil,
            typeName: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension DeregisterTypeOutput {
    /**
     Default instance of the DeregisterTypeOutput structure.
     */
    static let __default: CloudformationModel.DeregisterTypeOutput = {
        let defaultInstance = CloudformationModel.DeregisterTypeOutput()

        return defaultInstance
    }()
}

public extension DeregisterTypeOutputForDeregisterType {
    /**
     Default instance of the DeregisterTypeOutputForDeregisterType structure.
     */
    static let __default: CloudformationModel.DeregisterTypeOutputForDeregisterType = {
        let defaultInstance = CloudformationModel.DeregisterTypeOutputForDeregisterType(
            deregisterTypeResult: DeregisterTypeOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeAccountLimitsInput {
    /**
     Default instance of the DescribeAccountLimitsInput structure.
     */
    static let __default: CloudformationModel.DescribeAccountLimitsInput = {
        let defaultInstance = CloudformationModel.DescribeAccountLimitsInput(
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeAccountLimitsOutput {
    /**
     Default instance of the DescribeAccountLimitsOutput structure.
     */
    static let __default: CloudformationModel.DescribeAccountLimitsOutput = {
        let defaultInstance = CloudformationModel.DescribeAccountLimitsOutput(
            accountLimits: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeAccountLimitsOutputForDescribeAccountLimits {
    /**
     Default instance of the DescribeAccountLimitsOutputForDescribeAccountLimits structure.
     */
    static let __default: CloudformationModel.DescribeAccountLimitsOutputForDescribeAccountLimits = {
        let defaultInstance = CloudformationModel.DescribeAccountLimitsOutputForDescribeAccountLimits(
            describeAccountLimitsResult: DescribeAccountLimitsOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeChangeSetInput {
    /**
     Default instance of the DescribeChangeSetInput structure.
     */
    static let __default: CloudformationModel.DescribeChangeSetInput = {
        let defaultInstance = CloudformationModel.DescribeChangeSetInput(
            changeSetName: "0",
            nextToken: nil,
            stackName: nil)

        return defaultInstance
    }()
}

public extension DescribeChangeSetOutput {
    /**
     Default instance of the DescribeChangeSetOutput structure.
     */
    static let __default: CloudformationModel.DescribeChangeSetOutput = {
        let defaultInstance = CloudformationModel.DescribeChangeSetOutput(
            capabilities: nil,
            changeSetId: nil,
            changeSetName: nil,
            changes: nil,
            creationTime: nil,
            description: nil,
            executionStatus: nil,
            includeNestedStacks: nil,
            nextToken: nil,
            notificationARNs: nil,
            parameters: nil,
            parentChangeSetId: nil,
            rollbackConfiguration: nil,
            rootChangeSetId: nil,
            stackId: nil,
            stackName: nil,
            status: nil,
            statusReason: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension DescribeChangeSetOutputForDescribeChangeSet {
    /**
     Default instance of the DescribeChangeSetOutputForDescribeChangeSet structure.
     */
    static let __default: CloudformationModel.DescribeChangeSetOutputForDescribeChangeSet = {
        let defaultInstance = CloudformationModel.DescribeChangeSetOutputForDescribeChangeSet(
            describeChangeSetResult: DescribeChangeSetOutput.__default)

        return defaultInstance
    }()
}

public extension DescribePublisherInput {
    /**
     Default instance of the DescribePublisherInput structure.
     */
    static let __default: CloudformationModel.DescribePublisherInput = {
        let defaultInstance = CloudformationModel.DescribePublisherInput(
            publisherId: nil)

        return defaultInstance
    }()
}

public extension DescribePublisherOutput {
    /**
     Default instance of the DescribePublisherOutput structure.
     */
    static let __default: CloudformationModel.DescribePublisherOutput = {
        let defaultInstance = CloudformationModel.DescribePublisherOutput(
            identityProvider: nil,
            publisherId: nil,
            publisherProfile: nil,
            publisherStatus: nil)

        return defaultInstance
    }()
}

public extension DescribePublisherOutputForDescribePublisher {
    /**
     Default instance of the DescribePublisherOutputForDescribePublisher structure.
     */
    static let __default: CloudformationModel.DescribePublisherOutputForDescribePublisher = {
        let defaultInstance = CloudformationModel.DescribePublisherOutputForDescribePublisher(
            describePublisherResult: DescribePublisherOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeStackDriftDetectionStatusInput {
    /**
     Default instance of the DescribeStackDriftDetectionStatusInput structure.
     */
    static let __default: CloudformationModel.DescribeStackDriftDetectionStatusInput = {
        let defaultInstance = CloudformationModel.DescribeStackDriftDetectionStatusInput(
            stackDriftDetectionId: "0")

        return defaultInstance
    }()
}

public extension DescribeStackDriftDetectionStatusOutput {
    /**
     Default instance of the DescribeStackDriftDetectionStatusOutput structure.
     */
    static let __default: CloudformationModel.DescribeStackDriftDetectionStatusOutput = {
        let defaultInstance = CloudformationModel.DescribeStackDriftDetectionStatusOutput(
            detectionStatus: .__default,
            detectionStatusReason: nil,
            driftedStackResourceCount: nil,
            stackDriftDetectionId: "0",
            stackDriftStatus: nil,
            stackId: "value",
            timestamp: "2013-02-18T17:00:00Z")

        return defaultInstance
    }()
}

public extension DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus {
    /**
     Default instance of the DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus structure.
     */
    static let __default: CloudformationModel.DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus = {
        let defaultInstance = CloudformationModel.DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus(
            describeStackDriftDetectionStatusResult: DescribeStackDriftDetectionStatusOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeStackEventsInput {
    /**
     Default instance of the DescribeStackEventsInput structure.
     */
    static let __default: CloudformationModel.DescribeStackEventsInput = {
        let defaultInstance = CloudformationModel.DescribeStackEventsInput(
            nextToken: nil,
            stackName: nil)

        return defaultInstance
    }()
}

public extension DescribeStackEventsOutput {
    /**
     Default instance of the DescribeStackEventsOutput structure.
     */
    static let __default: CloudformationModel.DescribeStackEventsOutput = {
        let defaultInstance = CloudformationModel.DescribeStackEventsOutput(
            nextToken: nil,
            stackEvents: nil)

        return defaultInstance
    }()
}

public extension DescribeStackEventsOutputForDescribeStackEvents {
    /**
     Default instance of the DescribeStackEventsOutputForDescribeStackEvents structure.
     */
    static let __default: CloudformationModel.DescribeStackEventsOutputForDescribeStackEvents = {
        let defaultInstance = CloudformationModel.DescribeStackEventsOutputForDescribeStackEvents(
            describeStackEventsResult: DescribeStackEventsOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeStackInstanceInput {
    /**
     Default instance of the DescribeStackInstanceInput structure.
     */
    static let __default: CloudformationModel.DescribeStackInstanceInput = {
        let defaultInstance = CloudformationModel.DescribeStackInstanceInput(
            callAs: nil,
            stackInstanceAccount: "",
            stackInstanceRegion: "",
            stackSetName: "value")

        return defaultInstance
    }()
}

public extension DescribeStackInstanceOutput {
    /**
     Default instance of the DescribeStackInstanceOutput structure.
     */
    static let __default: CloudformationModel.DescribeStackInstanceOutput = {
        let defaultInstance = CloudformationModel.DescribeStackInstanceOutput(
            stackInstance: nil)

        return defaultInstance
    }()
}

public extension DescribeStackInstanceOutputForDescribeStackInstance {
    /**
     Default instance of the DescribeStackInstanceOutputForDescribeStackInstance structure.
     */
    static let __default: CloudformationModel.DescribeStackInstanceOutputForDescribeStackInstance = {
        let defaultInstance = CloudformationModel.DescribeStackInstanceOutputForDescribeStackInstance(
            describeStackInstanceResult: DescribeStackInstanceOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeStackResourceDriftsInput {
    /**
     Default instance of the DescribeStackResourceDriftsInput structure.
     */
    static let __default: CloudformationModel.DescribeStackResourceDriftsInput = {
        let defaultInstance = CloudformationModel.DescribeStackResourceDriftsInput(
            maxResults: nil,
            nextToken: nil,
            stackName: "0",
            stackResourceDriftStatusFilters: nil)

        return defaultInstance
    }()
}

public extension DescribeStackResourceDriftsOutput {
    /**
     Default instance of the DescribeStackResourceDriftsOutput structure.
     */
    static let __default: CloudformationModel.DescribeStackResourceDriftsOutput = {
        let defaultInstance = CloudformationModel.DescribeStackResourceDriftsOutput(
            nextToken: nil,
            stackResourceDrifts: [])

        return defaultInstance
    }()
}

public extension DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts {
    /**
     Default instance of the DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts structure.
     */
    static let __default: CloudformationModel.DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts = {
        let defaultInstance = CloudformationModel.DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts(
            describeStackResourceDriftsResult: DescribeStackResourceDriftsOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeStackResourceInput {
    /**
     Default instance of the DescribeStackResourceInput structure.
     */
    static let __default: CloudformationModel.DescribeStackResourceInput = {
        let defaultInstance = CloudformationModel.DescribeStackResourceInput(
            logicalResourceId: "value",
            stackName: "value")

        return defaultInstance
    }()
}

public extension DescribeStackResourceOutput {
    /**
     Default instance of the DescribeStackResourceOutput structure.
     */
    static let __default: CloudformationModel.DescribeStackResourceOutput = {
        let defaultInstance = CloudformationModel.DescribeStackResourceOutput(
            stackResourceDetail: nil)

        return defaultInstance
    }()
}

public extension DescribeStackResourceOutputForDescribeStackResource {
    /**
     Default instance of the DescribeStackResourceOutputForDescribeStackResource structure.
     */
    static let __default: CloudformationModel.DescribeStackResourceOutputForDescribeStackResource = {
        let defaultInstance = CloudformationModel.DescribeStackResourceOutputForDescribeStackResource(
            describeStackResourceResult: DescribeStackResourceOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeStackResourcesInput {
    /**
     Default instance of the DescribeStackResourcesInput structure.
     */
    static let __default: CloudformationModel.DescribeStackResourcesInput = {
        let defaultInstance = CloudformationModel.DescribeStackResourcesInput(
            logicalResourceId: nil,
            physicalResourceId: nil,
            stackName: nil)

        return defaultInstance
    }()
}

public extension DescribeStackResourcesOutput {
    /**
     Default instance of the DescribeStackResourcesOutput structure.
     */
    static let __default: CloudformationModel.DescribeStackResourcesOutput = {
        let defaultInstance = CloudformationModel.DescribeStackResourcesOutput(
            stackResources: nil)

        return defaultInstance
    }()
}

public extension DescribeStackResourcesOutputForDescribeStackResources {
    /**
     Default instance of the DescribeStackResourcesOutputForDescribeStackResources structure.
     */
    static let __default: CloudformationModel.DescribeStackResourcesOutputForDescribeStackResources = {
        let defaultInstance = CloudformationModel.DescribeStackResourcesOutputForDescribeStackResources(
            describeStackResourcesResult: DescribeStackResourcesOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeStackSetInput {
    /**
     Default instance of the DescribeStackSetInput structure.
     */
    static let __default: CloudformationModel.DescribeStackSetInput = {
        let defaultInstance = CloudformationModel.DescribeStackSetInput(
            callAs: nil,
            stackSetName: "value")

        return defaultInstance
    }()
}

public extension DescribeStackSetOperationInput {
    /**
     Default instance of the DescribeStackSetOperationInput structure.
     */
    static let __default: CloudformationModel.DescribeStackSetOperationInput = {
        let defaultInstance = CloudformationModel.DescribeStackSetOperationInput(
            callAs: nil,
            operationId: "0",
            stackSetName: "value")

        return defaultInstance
    }()
}

public extension DescribeStackSetOperationOutput {
    /**
     Default instance of the DescribeStackSetOperationOutput structure.
     */
    static let __default: CloudformationModel.DescribeStackSetOperationOutput = {
        let defaultInstance = CloudformationModel.DescribeStackSetOperationOutput(
            stackSetOperation: nil)

        return defaultInstance
    }()
}

public extension DescribeStackSetOperationOutputForDescribeStackSetOperation {
    /**
     Default instance of the DescribeStackSetOperationOutputForDescribeStackSetOperation structure.
     */
    static let __default: CloudformationModel.DescribeStackSetOperationOutputForDescribeStackSetOperation = {
        let defaultInstance = CloudformationModel.DescribeStackSetOperationOutputForDescribeStackSetOperation(
            describeStackSetOperationResult: DescribeStackSetOperationOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeStackSetOutput {
    /**
     Default instance of the DescribeStackSetOutput structure.
     */
    static let __default: CloudformationModel.DescribeStackSetOutput = {
        let defaultInstance = CloudformationModel.DescribeStackSetOutput(
            stackSet: nil)

        return defaultInstance
    }()
}

public extension DescribeStackSetOutputForDescribeStackSet {
    /**
     Default instance of the DescribeStackSetOutputForDescribeStackSet structure.
     */
    static let __default: CloudformationModel.DescribeStackSetOutputForDescribeStackSet = {
        let defaultInstance = CloudformationModel.DescribeStackSetOutputForDescribeStackSet(
            describeStackSetResult: DescribeStackSetOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeStacksInput {
    /**
     Default instance of the DescribeStacksInput structure.
     */
    static let __default: CloudformationModel.DescribeStacksInput = {
        let defaultInstance = CloudformationModel.DescribeStacksInput(
            nextToken: nil,
            stackName: nil)

        return defaultInstance
    }()
}

public extension DescribeStacksOutput {
    /**
     Default instance of the DescribeStacksOutput structure.
     */
    static let __default: CloudformationModel.DescribeStacksOutput = {
        let defaultInstance = CloudformationModel.DescribeStacksOutput(
            nextToken: nil,
            stacks: nil)

        return defaultInstance
    }()
}

public extension DescribeStacksOutputForDescribeStacks {
    /**
     Default instance of the DescribeStacksOutputForDescribeStacks structure.
     */
    static let __default: CloudformationModel.DescribeStacksOutputForDescribeStacks = {
        let defaultInstance = CloudformationModel.DescribeStacksOutputForDescribeStacks(
            describeStacksResult: DescribeStacksOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeTypeInput {
    /**
     Default instance of the DescribeTypeInput structure.
     */
    static let __default: CloudformationModel.DescribeTypeInput = {
        let defaultInstance = CloudformationModel.DescribeTypeInput(
            arn: nil,
            publicVersionNumber: nil,
            publisherId: nil,
            type: nil,
            typeName: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension DescribeTypeOutput {
    /**
     Default instance of the DescribeTypeOutput structure.
     */
    static let __default: CloudformationModel.DescribeTypeOutput = {
        let defaultInstance = CloudformationModel.DescribeTypeOutput(
            arn: nil,
            autoUpdate: nil,
            configurationSchema: nil,
            defaultVersionId: nil,
            deprecatedStatus: nil,
            description: nil,
            documentationUrl: nil,
            executionRoleArn: nil,
            isActivated: nil,
            isDefaultVersion: nil,
            lastUpdated: nil,
            latestPublicVersion: nil,
            loggingConfig: nil,
            originalTypeArn: nil,
            originalTypeName: nil,
            provisioningType: nil,
            publicVersionNumber: nil,
            publisherId: nil,
            requiredActivatedTypes: nil,
            schema: nil,
            sourceUrl: nil,
            timeCreated: nil,
            type: nil,
            typeName: nil,
            typeTestsStatus: nil,
            typeTestsStatusDescription: nil,
            visibility: nil)

        return defaultInstance
    }()
}

public extension DescribeTypeOutputForDescribeType {
    /**
     Default instance of the DescribeTypeOutputForDescribeType structure.
     */
    static let __default: CloudformationModel.DescribeTypeOutputForDescribeType = {
        let defaultInstance = CloudformationModel.DescribeTypeOutputForDescribeType(
            describeTypeResult: DescribeTypeOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeTypeRegistrationInput {
    /**
     Default instance of the DescribeTypeRegistrationInput structure.
     */
    static let __default: CloudformationModel.DescribeTypeRegistrationInput = {
        let defaultInstance = CloudformationModel.DescribeTypeRegistrationInput(
            registrationToken: "0")

        return defaultInstance
    }()
}

public extension DescribeTypeRegistrationOutput {
    /**
     Default instance of the DescribeTypeRegistrationOutput structure.
     */
    static let __default: CloudformationModel.DescribeTypeRegistrationOutput = {
        let defaultInstance = CloudformationModel.DescribeTypeRegistrationOutput(
            description: nil,
            progressStatus: nil,
            typeArn: nil,
            typeVersionArn: nil)

        return defaultInstance
    }()
}

public extension DescribeTypeRegistrationOutputForDescribeTypeRegistration {
    /**
     Default instance of the DescribeTypeRegistrationOutputForDescribeTypeRegistration structure.
     */
    static let __default: CloudformationModel.DescribeTypeRegistrationOutputForDescribeTypeRegistration = {
        let defaultInstance = CloudformationModel.DescribeTypeRegistrationOutputForDescribeTypeRegistration(
            describeTypeRegistrationResult: DescribeTypeRegistrationOutput.__default)

        return defaultInstance
    }()
}

public extension DetectStackDriftInput {
    /**
     Default instance of the DetectStackDriftInput structure.
     */
    static let __default: CloudformationModel.DetectStackDriftInput = {
        let defaultInstance = CloudformationModel.DetectStackDriftInput(
            logicalResourceIds: nil,
            stackName: "0")

        return defaultInstance
    }()
}

public extension DetectStackDriftOutput {
    /**
     Default instance of the DetectStackDriftOutput structure.
     */
    static let __default: CloudformationModel.DetectStackDriftOutput = {
        let defaultInstance = CloudformationModel.DetectStackDriftOutput(
            stackDriftDetectionId: "0")

        return defaultInstance
    }()
}

public extension DetectStackDriftOutputForDetectStackDrift {
    /**
     Default instance of the DetectStackDriftOutputForDetectStackDrift structure.
     */
    static let __default: CloudformationModel.DetectStackDriftOutputForDetectStackDrift = {
        let defaultInstance = CloudformationModel.DetectStackDriftOutputForDetectStackDrift(
            detectStackDriftResult: DetectStackDriftOutput.__default)

        return defaultInstance
    }()
}

public extension DetectStackResourceDriftInput {
    /**
     Default instance of the DetectStackResourceDriftInput structure.
     */
    static let __default: CloudformationModel.DetectStackResourceDriftInput = {
        let defaultInstance = CloudformationModel.DetectStackResourceDriftInput(
            logicalResourceId: "value",
            stackName: "0")

        return defaultInstance
    }()
}

public extension DetectStackResourceDriftOutput {
    /**
     Default instance of the DetectStackResourceDriftOutput structure.
     */
    static let __default: CloudformationModel.DetectStackResourceDriftOutput = {
        let defaultInstance = CloudformationModel.DetectStackResourceDriftOutput(
            stackResourceDrift: StackResourceDrift.__default)

        return defaultInstance
    }()
}

public extension DetectStackResourceDriftOutputForDetectStackResourceDrift {
    /**
     Default instance of the DetectStackResourceDriftOutputForDetectStackResourceDrift structure.
     */
    static let __default: CloudformationModel.DetectStackResourceDriftOutputForDetectStackResourceDrift = {
        let defaultInstance = CloudformationModel.DetectStackResourceDriftOutputForDetectStackResourceDrift(
            detectStackResourceDriftResult: DetectStackResourceDriftOutput.__default)

        return defaultInstance
    }()
}

public extension DetectStackSetDriftInput {
    /**
     Default instance of the DetectStackSetDriftInput structure.
     */
    static let __default: CloudformationModel.DetectStackSetDriftInput = {
        let defaultInstance = CloudformationModel.DetectStackSetDriftInput(
            callAs: nil,
            operationId: nil,
            operationPreferences: nil,
            stackSetName: "")

        return defaultInstance
    }()
}

public extension DetectStackSetDriftOutput {
    /**
     Default instance of the DetectStackSetDriftOutput structure.
     */
    static let __default: CloudformationModel.DetectStackSetDriftOutput = {
        let defaultInstance = CloudformationModel.DetectStackSetDriftOutput(
            operationId: nil)

        return defaultInstance
    }()
}

public extension DetectStackSetDriftOutputForDetectStackSetDrift {
    /**
     Default instance of the DetectStackSetDriftOutputForDetectStackSetDrift structure.
     */
    static let __default: CloudformationModel.DetectStackSetDriftOutputForDetectStackSetDrift = {
        let defaultInstance = CloudformationModel.DetectStackSetDriftOutputForDetectStackSetDrift(
            detectStackSetDriftResult: DetectStackSetDriftOutput.__default)

        return defaultInstance
    }()
}

public extension EstimateTemplateCostInput {
    /**
     Default instance of the EstimateTemplateCostInput structure.
     */
    static let __default: CloudformationModel.EstimateTemplateCostInput = {
        let defaultInstance = CloudformationModel.EstimateTemplateCostInput(
            parameters: nil,
            templateBody: nil,
            templateURL: nil)

        return defaultInstance
    }()
}

public extension EstimateTemplateCostOutput {
    /**
     Default instance of the EstimateTemplateCostOutput structure.
     */
    static let __default: CloudformationModel.EstimateTemplateCostOutput = {
        let defaultInstance = CloudformationModel.EstimateTemplateCostOutput(
            url: nil)

        return defaultInstance
    }()
}

public extension EstimateTemplateCostOutputForEstimateTemplateCost {
    /**
     Default instance of the EstimateTemplateCostOutputForEstimateTemplateCost structure.
     */
    static let __default: CloudformationModel.EstimateTemplateCostOutputForEstimateTemplateCost = {
        let defaultInstance = CloudformationModel.EstimateTemplateCostOutputForEstimateTemplateCost(
            estimateTemplateCostResult: EstimateTemplateCostOutput.__default)

        return defaultInstance
    }()
}

public extension ExecuteChangeSetInput {
    /**
     Default instance of the ExecuteChangeSetInput structure.
     */
    static let __default: CloudformationModel.ExecuteChangeSetInput = {
        let defaultInstance = CloudformationModel.ExecuteChangeSetInput(
            changeSetName: "0",
            clientRequestToken: nil,
            disableRollback: nil,
            stackName: nil)

        return defaultInstance
    }()
}

public extension ExecuteChangeSetOutput {
    /**
     Default instance of the ExecuteChangeSetOutput structure.
     */
    static let __default: CloudformationModel.ExecuteChangeSetOutput = {
        let defaultInstance = CloudformationModel.ExecuteChangeSetOutput()

        return defaultInstance
    }()
}

public extension ExecuteChangeSetOutputForExecuteChangeSet {
    /**
     Default instance of the ExecuteChangeSetOutputForExecuteChangeSet structure.
     */
    static let __default: CloudformationModel.ExecuteChangeSetOutputForExecuteChangeSet = {
        let defaultInstance = CloudformationModel.ExecuteChangeSetOutputForExecuteChangeSet(
            executeChangeSetResult: ExecuteChangeSetOutput.__default)

        return defaultInstance
    }()
}

public extension Export {
    /**
     Default instance of the Export structure.
     */
    static let __default: CloudformationModel.Export = {
        let defaultInstance = CloudformationModel.Export(
            exportingStackId: nil,
            name: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension GetStackPolicyInput {
    /**
     Default instance of the GetStackPolicyInput structure.
     */
    static let __default: CloudformationModel.GetStackPolicyInput = {
        let defaultInstance = CloudformationModel.GetStackPolicyInput(
            stackName: "value")

        return defaultInstance
    }()
}

public extension GetStackPolicyOutput {
    /**
     Default instance of the GetStackPolicyOutput structure.
     */
    static let __default: CloudformationModel.GetStackPolicyOutput = {
        let defaultInstance = CloudformationModel.GetStackPolicyOutput(
            stackPolicyBody: nil)

        return defaultInstance
    }()
}

public extension GetStackPolicyOutputForGetStackPolicy {
    /**
     Default instance of the GetStackPolicyOutputForGetStackPolicy structure.
     */
    static let __default: CloudformationModel.GetStackPolicyOutputForGetStackPolicy = {
        let defaultInstance = CloudformationModel.GetStackPolicyOutputForGetStackPolicy(
            getStackPolicyResult: GetStackPolicyOutput.__default)

        return defaultInstance
    }()
}

public extension GetTemplateInput {
    /**
     Default instance of the GetTemplateInput structure.
     */
    static let __default: CloudformationModel.GetTemplateInput = {
        let defaultInstance = CloudformationModel.GetTemplateInput(
            changeSetName: nil,
            stackName: nil,
            templateStage: nil)

        return defaultInstance
    }()
}

public extension GetTemplateOutput {
    /**
     Default instance of the GetTemplateOutput structure.
     */
    static let __default: CloudformationModel.GetTemplateOutput = {
        let defaultInstance = CloudformationModel.GetTemplateOutput(
            stagesAvailable: nil,
            templateBody: nil)

        return defaultInstance
    }()
}

public extension GetTemplateOutputForGetTemplate {
    /**
     Default instance of the GetTemplateOutputForGetTemplate structure.
     */
    static let __default: CloudformationModel.GetTemplateOutputForGetTemplate = {
        let defaultInstance = CloudformationModel.GetTemplateOutputForGetTemplate(
            getTemplateResult: GetTemplateOutput.__default)

        return defaultInstance
    }()
}

public extension GetTemplateSummaryInput {
    /**
     Default instance of the GetTemplateSummaryInput structure.
     */
    static let __default: CloudformationModel.GetTemplateSummaryInput = {
        let defaultInstance = CloudformationModel.GetTemplateSummaryInput(
            callAs: nil,
            stackName: nil,
            stackSetName: nil,
            templateBody: nil,
            templateURL: nil)

        return defaultInstance
    }()
}

public extension GetTemplateSummaryOutput {
    /**
     Default instance of the GetTemplateSummaryOutput structure.
     */
    static let __default: CloudformationModel.GetTemplateSummaryOutput = {
        let defaultInstance = CloudformationModel.GetTemplateSummaryOutput(
            capabilities: nil,
            capabilitiesReason: nil,
            declaredTransforms: nil,
            description: nil,
            metadata: nil,
            parameters: nil,
            resourceIdentifierSummaries: nil,
            resourceTypes: nil,
            version: nil)

        return defaultInstance
    }()
}

public extension GetTemplateSummaryOutputForGetTemplateSummary {
    /**
     Default instance of the GetTemplateSummaryOutputForGetTemplateSummary structure.
     */
    static let __default: CloudformationModel.GetTemplateSummaryOutputForGetTemplateSummary = {
        let defaultInstance = CloudformationModel.GetTemplateSummaryOutputForGetTemplateSummary(
            getTemplateSummaryResult: GetTemplateSummaryOutput.__default)

        return defaultInstance
    }()
}

public extension ImportStacksToStackSetInput {
    /**
     Default instance of the ImportStacksToStackSetInput structure.
     */
    static let __default: CloudformationModel.ImportStacksToStackSetInput = {
        let defaultInstance = CloudformationModel.ImportStacksToStackSetInput(
            callAs: nil,
            operationId: nil,
            operationPreferences: nil,
            organizationalUnitIds: nil,
            stackIds: nil,
            stackIdsUrl: nil,
            stackSetName: "")

        return defaultInstance
    }()
}

public extension ImportStacksToStackSetOutput {
    /**
     Default instance of the ImportStacksToStackSetOutput structure.
     */
    static let __default: CloudformationModel.ImportStacksToStackSetOutput = {
        let defaultInstance = CloudformationModel.ImportStacksToStackSetOutput(
            operationId: nil)

        return defaultInstance
    }()
}

public extension ImportStacksToStackSetOutputForImportStacksToStackSet {
    /**
     Default instance of the ImportStacksToStackSetOutputForImportStacksToStackSet structure.
     */
    static let __default: CloudformationModel.ImportStacksToStackSetOutputForImportStacksToStackSet = {
        let defaultInstance = CloudformationModel.ImportStacksToStackSetOutputForImportStacksToStackSet(
            importStacksToStackSetResult: ImportStacksToStackSetOutput.__default)

        return defaultInstance
    }()
}

public extension InsufficientCapabilitiesException {
    /**
     Default instance of the InsufficientCapabilitiesException structure.
     */
    static let __default: CloudformationModel.InsufficientCapabilitiesException = {
        let defaultInstance = CloudformationModel.InsufficientCapabilitiesException()

        return defaultInstance
    }()
}

public extension InvalidChangeSetStatusException {
    /**
     Default instance of the InvalidChangeSetStatusException structure.
     */
    static let __default: CloudformationModel.InvalidChangeSetStatusException = {
        let defaultInstance = CloudformationModel.InvalidChangeSetStatusException()

        return defaultInstance
    }()
}

public extension InvalidOperationException {
    /**
     Default instance of the InvalidOperationException structure.
     */
    static let __default: CloudformationModel.InvalidOperationException = {
        let defaultInstance = CloudformationModel.InvalidOperationException()

        return defaultInstance
    }()
}

public extension InvalidStateTransitionException {
    /**
     Default instance of the InvalidStateTransitionException structure.
     */
    static let __default: CloudformationModel.InvalidStateTransitionException = {
        let defaultInstance = CloudformationModel.InvalidStateTransitionException()

        return defaultInstance
    }()
}

public extension LimitExceededException {
    /**
     Default instance of the LimitExceededException structure.
     */
    static let __default: CloudformationModel.LimitExceededException = {
        let defaultInstance = CloudformationModel.LimitExceededException()

        return defaultInstance
    }()
}

public extension ListChangeSetsInput {
    /**
     Default instance of the ListChangeSetsInput structure.
     */
    static let __default: CloudformationModel.ListChangeSetsInput = {
        let defaultInstance = CloudformationModel.ListChangeSetsInput(
            nextToken: nil,
            stackName: "0")

        return defaultInstance
    }()
}

public extension ListChangeSetsOutput {
    /**
     Default instance of the ListChangeSetsOutput structure.
     */
    static let __default: CloudformationModel.ListChangeSetsOutput = {
        let defaultInstance = CloudformationModel.ListChangeSetsOutput(
            nextToken: nil,
            summaries: nil)

        return defaultInstance
    }()
}

public extension ListChangeSetsOutputForListChangeSets {
    /**
     Default instance of the ListChangeSetsOutputForListChangeSets structure.
     */
    static let __default: CloudformationModel.ListChangeSetsOutputForListChangeSets = {
        let defaultInstance = CloudformationModel.ListChangeSetsOutputForListChangeSets(
            listChangeSetsResult: ListChangeSetsOutput.__default)

        return defaultInstance
    }()
}

public extension ListExportsInput {
    /**
     Default instance of the ListExportsInput structure.
     */
    static let __default: CloudformationModel.ListExportsInput = {
        let defaultInstance = CloudformationModel.ListExportsInput(
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListExportsOutput {
    /**
     Default instance of the ListExportsOutput structure.
     */
    static let __default: CloudformationModel.ListExportsOutput = {
        let defaultInstance = CloudformationModel.ListExportsOutput(
            exports: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListExportsOutputForListExports {
    /**
     Default instance of the ListExportsOutputForListExports structure.
     */
    static let __default: CloudformationModel.ListExportsOutputForListExports = {
        let defaultInstance = CloudformationModel.ListExportsOutputForListExports(
            listExportsResult: ListExportsOutput.__default)

        return defaultInstance
    }()
}

public extension ListImportsInput {
    /**
     Default instance of the ListImportsInput structure.
     */
    static let __default: CloudformationModel.ListImportsInput = {
        let defaultInstance = CloudformationModel.ListImportsInput(
            exportName: "value",
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListImportsOutput {
    /**
     Default instance of the ListImportsOutput structure.
     */
    static let __default: CloudformationModel.ListImportsOutput = {
        let defaultInstance = CloudformationModel.ListImportsOutput(
            imports: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListImportsOutputForListImports {
    /**
     Default instance of the ListImportsOutputForListImports structure.
     */
    static let __default: CloudformationModel.ListImportsOutputForListImports = {
        let defaultInstance = CloudformationModel.ListImportsOutputForListImports(
            listImportsResult: ListImportsOutput.__default)

        return defaultInstance
    }()
}

public extension ListStackInstancesInput {
    /**
     Default instance of the ListStackInstancesInput structure.
     */
    static let __default: CloudformationModel.ListStackInstancesInput = {
        let defaultInstance = CloudformationModel.ListStackInstancesInput(
            callAs: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            stackInstanceAccount: nil,
            stackInstanceRegion: nil,
            stackSetName: "value")

        return defaultInstance
    }()
}

public extension ListStackInstancesOutput {
    /**
     Default instance of the ListStackInstancesOutput structure.
     */
    static let __default: CloudformationModel.ListStackInstancesOutput = {
        let defaultInstance = CloudformationModel.ListStackInstancesOutput(
            nextToken: nil,
            summaries: nil)

        return defaultInstance
    }()
}

public extension ListStackInstancesOutputForListStackInstances {
    /**
     Default instance of the ListStackInstancesOutputForListStackInstances structure.
     */
    static let __default: CloudformationModel.ListStackInstancesOutputForListStackInstances = {
        let defaultInstance = CloudformationModel.ListStackInstancesOutputForListStackInstances(
            listStackInstancesResult: ListStackInstancesOutput.__default)

        return defaultInstance
    }()
}

public extension ListStackResourcesInput {
    /**
     Default instance of the ListStackResourcesInput structure.
     */
    static let __default: CloudformationModel.ListStackResourcesInput = {
        let defaultInstance = CloudformationModel.ListStackResourcesInput(
            nextToken: nil,
            stackName: "value")

        return defaultInstance
    }()
}

public extension ListStackResourcesOutput {
    /**
     Default instance of the ListStackResourcesOutput structure.
     */
    static let __default: CloudformationModel.ListStackResourcesOutput = {
        let defaultInstance = CloudformationModel.ListStackResourcesOutput(
            nextToken: nil,
            stackResourceSummaries: nil)

        return defaultInstance
    }()
}

public extension ListStackResourcesOutputForListStackResources {
    /**
     Default instance of the ListStackResourcesOutputForListStackResources structure.
     */
    static let __default: CloudformationModel.ListStackResourcesOutputForListStackResources = {
        let defaultInstance = CloudformationModel.ListStackResourcesOutputForListStackResources(
            listStackResourcesResult: ListStackResourcesOutput.__default)

        return defaultInstance
    }()
}

public extension ListStackSetOperationResultsInput {
    /**
     Default instance of the ListStackSetOperationResultsInput structure.
     */
    static let __default: CloudformationModel.ListStackSetOperationResultsInput = {
        let defaultInstance = CloudformationModel.ListStackSetOperationResultsInput(
            callAs: nil,
            maxResults: nil,
            nextToken: nil,
            operationId: "0",
            stackSetName: "value")

        return defaultInstance
    }()
}

public extension ListStackSetOperationResultsOutput {
    /**
     Default instance of the ListStackSetOperationResultsOutput structure.
     */
    static let __default: CloudformationModel.ListStackSetOperationResultsOutput = {
        let defaultInstance = CloudformationModel.ListStackSetOperationResultsOutput(
            nextToken: nil,
            summaries: nil)

        return defaultInstance
    }()
}

public extension ListStackSetOperationResultsOutputForListStackSetOperationResults {
    /**
     Default instance of the ListStackSetOperationResultsOutputForListStackSetOperationResults structure.
     */
    static let __default: CloudformationModel.ListStackSetOperationResultsOutputForListStackSetOperationResults = {
        let defaultInstance = CloudformationModel.ListStackSetOperationResultsOutputForListStackSetOperationResults(
            listStackSetOperationResultsResult: ListStackSetOperationResultsOutput.__default)

        return defaultInstance
    }()
}

public extension ListStackSetOperationsInput {
    /**
     Default instance of the ListStackSetOperationsInput structure.
     */
    static let __default: CloudformationModel.ListStackSetOperationsInput = {
        let defaultInstance = CloudformationModel.ListStackSetOperationsInput(
            callAs: nil,
            maxResults: nil,
            nextToken: nil,
            stackSetName: "value")

        return defaultInstance
    }()
}

public extension ListStackSetOperationsOutput {
    /**
     Default instance of the ListStackSetOperationsOutput structure.
     */
    static let __default: CloudformationModel.ListStackSetOperationsOutput = {
        let defaultInstance = CloudformationModel.ListStackSetOperationsOutput(
            nextToken: nil,
            summaries: nil)

        return defaultInstance
    }()
}

public extension ListStackSetOperationsOutputForListStackSetOperations {
    /**
     Default instance of the ListStackSetOperationsOutputForListStackSetOperations structure.
     */
    static let __default: CloudformationModel.ListStackSetOperationsOutputForListStackSetOperations = {
        let defaultInstance = CloudformationModel.ListStackSetOperationsOutputForListStackSetOperations(
            listStackSetOperationsResult: ListStackSetOperationsOutput.__default)

        return defaultInstance
    }()
}

public extension ListStackSetsInput {
    /**
     Default instance of the ListStackSetsInput structure.
     */
    static let __default: CloudformationModel.ListStackSetsInput = {
        let defaultInstance = CloudformationModel.ListStackSetsInput(
            callAs: nil,
            maxResults: nil,
            nextToken: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension ListStackSetsOutput {
    /**
     Default instance of the ListStackSetsOutput structure.
     */
    static let __default: CloudformationModel.ListStackSetsOutput = {
        let defaultInstance = CloudformationModel.ListStackSetsOutput(
            nextToken: nil,
            summaries: nil)

        return defaultInstance
    }()
}

public extension ListStackSetsOutputForListStackSets {
    /**
     Default instance of the ListStackSetsOutputForListStackSets structure.
     */
    static let __default: CloudformationModel.ListStackSetsOutputForListStackSets = {
        let defaultInstance = CloudformationModel.ListStackSetsOutputForListStackSets(
            listStackSetsResult: ListStackSetsOutput.__default)

        return defaultInstance
    }()
}

public extension ListStacksInput {
    /**
     Default instance of the ListStacksInput structure.
     */
    static let __default: CloudformationModel.ListStacksInput = {
        let defaultInstance = CloudformationModel.ListStacksInput(
            nextToken: nil,
            stackStatusFilter: nil)

        return defaultInstance
    }()
}

public extension ListStacksOutput {
    /**
     Default instance of the ListStacksOutput structure.
     */
    static let __default: CloudformationModel.ListStacksOutput = {
        let defaultInstance = CloudformationModel.ListStacksOutput(
            nextToken: nil,
            stackSummaries: nil)

        return defaultInstance
    }()
}

public extension ListStacksOutputForListStacks {
    /**
     Default instance of the ListStacksOutputForListStacks structure.
     */
    static let __default: CloudformationModel.ListStacksOutputForListStacks = {
        let defaultInstance = CloudformationModel.ListStacksOutputForListStacks(
            listStacksResult: ListStacksOutput.__default)

        return defaultInstance
    }()
}

public extension ListTypeRegistrationsInput {
    /**
     Default instance of the ListTypeRegistrationsInput structure.
     */
    static let __default: CloudformationModel.ListTypeRegistrationsInput = {
        let defaultInstance = CloudformationModel.ListTypeRegistrationsInput(
            maxResults: nil,
            nextToken: nil,
            registrationStatusFilter: nil,
            type: nil,
            typeArn: nil,
            typeName: nil)

        return defaultInstance
    }()
}

public extension ListTypeRegistrationsOutput {
    /**
     Default instance of the ListTypeRegistrationsOutput structure.
     */
    static let __default: CloudformationModel.ListTypeRegistrationsOutput = {
        let defaultInstance = CloudformationModel.ListTypeRegistrationsOutput(
            nextToken: nil,
            registrationTokenList: nil)

        return defaultInstance
    }()
}

public extension ListTypeRegistrationsOutputForListTypeRegistrations {
    /**
     Default instance of the ListTypeRegistrationsOutputForListTypeRegistrations structure.
     */
    static let __default: CloudformationModel.ListTypeRegistrationsOutputForListTypeRegistrations = {
        let defaultInstance = CloudformationModel.ListTypeRegistrationsOutputForListTypeRegistrations(
            listTypeRegistrationsResult: ListTypeRegistrationsOutput.__default)

        return defaultInstance
    }()
}

public extension ListTypeVersionsInput {
    /**
     Default instance of the ListTypeVersionsInput structure.
     */
    static let __default: CloudformationModel.ListTypeVersionsInput = {
        let defaultInstance = CloudformationModel.ListTypeVersionsInput(
            arn: nil,
            deprecatedStatus: nil,
            maxResults: nil,
            nextToken: nil,
            publisherId: nil,
            type: nil,
            typeName: nil)

        return defaultInstance
    }()
}

public extension ListTypeVersionsOutput {
    /**
     Default instance of the ListTypeVersionsOutput structure.
     */
    static let __default: CloudformationModel.ListTypeVersionsOutput = {
        let defaultInstance = CloudformationModel.ListTypeVersionsOutput(
            nextToken: nil,
            typeVersionSummaries: nil)

        return defaultInstance
    }()
}

public extension ListTypeVersionsOutputForListTypeVersions {
    /**
     Default instance of the ListTypeVersionsOutputForListTypeVersions structure.
     */
    static let __default: CloudformationModel.ListTypeVersionsOutputForListTypeVersions = {
        let defaultInstance = CloudformationModel.ListTypeVersionsOutputForListTypeVersions(
            listTypeVersionsResult: ListTypeVersionsOutput.__default)

        return defaultInstance
    }()
}

public extension ListTypesInput {
    /**
     Default instance of the ListTypesInput structure.
     */
    static let __default: CloudformationModel.ListTypesInput = {
        let defaultInstance = CloudformationModel.ListTypesInput(
            deprecatedStatus: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            provisioningType: nil,
            type: nil,
            visibility: nil)

        return defaultInstance
    }()
}

public extension ListTypesOutput {
    /**
     Default instance of the ListTypesOutput structure.
     */
    static let __default: CloudformationModel.ListTypesOutput = {
        let defaultInstance = CloudformationModel.ListTypesOutput(
            nextToken: nil,
            typeSummaries: nil)

        return defaultInstance
    }()
}

public extension ListTypesOutputForListTypes {
    /**
     Default instance of the ListTypesOutputForListTypes structure.
     */
    static let __default: CloudformationModel.ListTypesOutputForListTypes = {
        let defaultInstance = CloudformationModel.ListTypesOutputForListTypes(
            listTypesResult: ListTypesOutput.__default)

        return defaultInstance
    }()
}

public extension LoggingConfig {
    /**
     Default instance of the LoggingConfig structure.
     */
    static let __default: CloudformationModel.LoggingConfig = {
        let defaultInstance = CloudformationModel.LoggingConfig(
            logGroupName: "0",
            logRoleArn: "0")

        return defaultInstance
    }()
}

public extension ManagedExecution {
    /**
     Default instance of the ManagedExecution structure.
     */
    static let __default: CloudformationModel.ManagedExecution = {
        let defaultInstance = CloudformationModel.ManagedExecution(
            active: nil)

        return defaultInstance
    }()
}

public extension ModuleInfo {
    /**
     Default instance of the ModuleInfo structure.
     */
    static let __default: CloudformationModel.ModuleInfo = {
        let defaultInstance = CloudformationModel.ModuleInfo(
            logicalIdHierarchy: nil,
            typeHierarchy: nil)

        return defaultInstance
    }()
}

public extension NameAlreadyExistsException {
    /**
     Default instance of the NameAlreadyExistsException structure.
     */
    static let __default: CloudformationModel.NameAlreadyExistsException = {
        let defaultInstance = CloudformationModel.NameAlreadyExistsException()

        return defaultInstance
    }()
}

public extension OperationIdAlreadyExistsException {
    /**
     Default instance of the OperationIdAlreadyExistsException structure.
     */
    static let __default: CloudformationModel.OperationIdAlreadyExistsException = {
        let defaultInstance = CloudformationModel.OperationIdAlreadyExistsException()

        return defaultInstance
    }()
}

public extension OperationInProgressException {
    /**
     Default instance of the OperationInProgressException structure.
     */
    static let __default: CloudformationModel.OperationInProgressException = {
        let defaultInstance = CloudformationModel.OperationInProgressException()

        return defaultInstance
    }()
}

public extension OperationNotFoundException {
    /**
     Default instance of the OperationNotFoundException structure.
     */
    static let __default: CloudformationModel.OperationNotFoundException = {
        let defaultInstance = CloudformationModel.OperationNotFoundException()

        return defaultInstance
    }()
}

public extension OperationStatusCheckFailedException {
    /**
     Default instance of the OperationStatusCheckFailedException structure.
     */
    static let __default: CloudformationModel.OperationStatusCheckFailedException = {
        let defaultInstance = CloudformationModel.OperationStatusCheckFailedException()

        return defaultInstance
    }()
}

public extension Output {
    /**
     Default instance of the Output structure.
     */
    static let __default: CloudformationModel.Output = {
        let defaultInstance = CloudformationModel.Output(
            description: nil,
            exportName: nil,
            outputKey: nil,
            outputValue: nil)

        return defaultInstance
    }()
}

public extension Parameter {
    /**
     Default instance of the Parameter structure.
     */
    static let __default: CloudformationModel.Parameter = {
        let defaultInstance = CloudformationModel.Parameter(
            parameterKey: nil,
            parameterValue: nil,
            resolvedValue: nil,
            usePreviousValue: nil)

        return defaultInstance
    }()
}

public extension ParameterConstraints {
    /**
     Default instance of the ParameterConstraints structure.
     */
    static let __default: CloudformationModel.ParameterConstraints = {
        let defaultInstance = CloudformationModel.ParameterConstraints(
            allowedValues: nil)

        return defaultInstance
    }()
}

public extension ParameterDeclaration {
    /**
     Default instance of the ParameterDeclaration structure.
     */
    static let __default: CloudformationModel.ParameterDeclaration = {
        let defaultInstance = CloudformationModel.ParameterDeclaration(
            defaultValue: nil,
            description: nil,
            noEcho: nil,
            parameterConstraints: nil,
            parameterKey: nil,
            parameterType: nil)

        return defaultInstance
    }()
}

public extension PhysicalResourceIdContextKeyValuePair {
    /**
     Default instance of the PhysicalResourceIdContextKeyValuePair structure.
     */
    static let __default: CloudformationModel.PhysicalResourceIdContextKeyValuePair = {
        let defaultInstance = CloudformationModel.PhysicalResourceIdContextKeyValuePair(
            key: "value",
            value: "value")

        return defaultInstance
    }()
}

public extension PropertyDifference {
    /**
     Default instance of the PropertyDifference structure.
     */
    static let __default: CloudformationModel.PropertyDifference = {
        let defaultInstance = CloudformationModel.PropertyDifference(
            actualValue: "value",
            differenceType: .__default,
            expectedValue: "value",
            propertyPath: "value")

        return defaultInstance
    }()
}

public extension PublishTypeInput {
    /**
     Default instance of the PublishTypeInput structure.
     */
    static let __default: CloudformationModel.PublishTypeInput = {
        let defaultInstance = CloudformationModel.PublishTypeInput(
            arn: nil,
            publicVersionNumber: nil,
            type: nil,
            typeName: nil)

        return defaultInstance
    }()
}

public extension PublishTypeOutput {
    /**
     Default instance of the PublishTypeOutput structure.
     */
    static let __default: CloudformationModel.PublishTypeOutput = {
        let defaultInstance = CloudformationModel.PublishTypeOutput(
            publicTypeArn: nil)

        return defaultInstance
    }()
}

public extension PublishTypeOutputForPublishType {
    /**
     Default instance of the PublishTypeOutputForPublishType structure.
     */
    static let __default: CloudformationModel.PublishTypeOutputForPublishType = {
        let defaultInstance = CloudformationModel.PublishTypeOutputForPublishType(
            publishTypeResult: PublishTypeOutput.__default)

        return defaultInstance
    }()
}

public extension RecordHandlerProgressInput {
    /**
     Default instance of the RecordHandlerProgressInput structure.
     */
    static let __default: CloudformationModel.RecordHandlerProgressInput = {
        let defaultInstance = CloudformationModel.RecordHandlerProgressInput(
            bearerToken: "0",
            clientRequestToken: nil,
            currentOperationStatus: nil,
            errorCode: nil,
            operationStatus: .__default,
            resourceModel: nil,
            statusMessage: nil)

        return defaultInstance
    }()
}

public extension RecordHandlerProgressOutput {
    /**
     Default instance of the RecordHandlerProgressOutput structure.
     */
    static let __default: CloudformationModel.RecordHandlerProgressOutput = {
        let defaultInstance = CloudformationModel.RecordHandlerProgressOutput()

        return defaultInstance
    }()
}

public extension RecordHandlerProgressOutputForRecordHandlerProgress {
    /**
     Default instance of the RecordHandlerProgressOutputForRecordHandlerProgress structure.
     */
    static let __default: CloudformationModel.RecordHandlerProgressOutputForRecordHandlerProgress = {
        let defaultInstance = CloudformationModel.RecordHandlerProgressOutputForRecordHandlerProgress(
            recordHandlerProgressResult: RecordHandlerProgressOutput.__default)

        return defaultInstance
    }()
}

public extension RegisterPublisherInput {
    /**
     Default instance of the RegisterPublisherInput structure.
     */
    static let __default: CloudformationModel.RegisterPublisherInput = {
        let defaultInstance = CloudformationModel.RegisterPublisherInput(
            acceptTermsAndConditions: nil,
            connectionArn: nil)

        return defaultInstance
    }()
}

public extension RegisterPublisherOutput {
    /**
     Default instance of the RegisterPublisherOutput structure.
     */
    static let __default: CloudformationModel.RegisterPublisherOutput = {
        let defaultInstance = CloudformationModel.RegisterPublisherOutput(
            publisherId: nil)

        return defaultInstance
    }()
}

public extension RegisterPublisherOutputForRegisterPublisher {
    /**
     Default instance of the RegisterPublisherOutputForRegisterPublisher structure.
     */
    static let __default: CloudformationModel.RegisterPublisherOutputForRegisterPublisher = {
        let defaultInstance = CloudformationModel.RegisterPublisherOutputForRegisterPublisher(
            registerPublisherResult: RegisterPublisherOutput.__default)

        return defaultInstance
    }()
}

public extension RegisterTypeInput {
    /**
     Default instance of the RegisterTypeInput structure.
     */
    static let __default: CloudformationModel.RegisterTypeInput = {
        let defaultInstance = CloudformationModel.RegisterTypeInput(
            clientRequestToken: nil,
            executionRoleArn: nil,
            loggingConfig: nil,
            schemaHandlerPackage: "0",
            type: nil,
            typeName: "0123456789")

        return defaultInstance
    }()
}

public extension RegisterTypeOutput {
    /**
     Default instance of the RegisterTypeOutput structure.
     */
    static let __default: CloudformationModel.RegisterTypeOutput = {
        let defaultInstance = CloudformationModel.RegisterTypeOutput(
            registrationToken: nil)

        return defaultInstance
    }()
}

public extension RegisterTypeOutputForRegisterType {
    /**
     Default instance of the RegisterTypeOutputForRegisterType structure.
     */
    static let __default: CloudformationModel.RegisterTypeOutputForRegisterType = {
        let defaultInstance = CloudformationModel.RegisterTypeOutputForRegisterType(
            registerTypeResult: RegisterTypeOutput.__default)

        return defaultInstance
    }()
}

public extension RequiredActivatedType {
    /**
     Default instance of the RequiredActivatedType structure.
     */
    static let __default: CloudformationModel.RequiredActivatedType = {
        let defaultInstance = CloudformationModel.RequiredActivatedType(
            originalTypeName: nil,
            publisherId: nil,
            supportedMajorVersions: nil,
            typeNameAlias: nil)

        return defaultInstance
    }()
}

public extension ResourceChange {
    /**
     Default instance of the ResourceChange structure.
     */
    static let __default: CloudformationModel.ResourceChange = {
        let defaultInstance = CloudformationModel.ResourceChange(
            action: nil,
            changeSetId: nil,
            details: nil,
            logicalResourceId: nil,
            moduleInfo: nil,
            physicalResourceId: nil,
            replacement: nil,
            resourceType: nil,
            scope: nil)

        return defaultInstance
    }()
}

public extension ResourceChangeDetail {
    /**
     Default instance of the ResourceChangeDetail structure.
     */
    static let __default: CloudformationModel.ResourceChangeDetail = {
        let defaultInstance = CloudformationModel.ResourceChangeDetail(
            causingEntity: nil,
            changeSource: nil,
            evaluation: nil,
            target: nil)

        return defaultInstance
    }()
}

public extension ResourceIdentifierSummary {
    /**
     Default instance of the ResourceIdentifierSummary structure.
     */
    static let __default: CloudformationModel.ResourceIdentifierSummary = {
        let defaultInstance = CloudformationModel.ResourceIdentifierSummary(
            logicalResourceIds: nil,
            resourceIdentifiers: nil,
            resourceType: nil)

        return defaultInstance
    }()
}

public extension ResourceTargetDefinition {
    /**
     Default instance of the ResourceTargetDefinition structure.
     */
    static let __default: CloudformationModel.ResourceTargetDefinition = {
        let defaultInstance = CloudformationModel.ResourceTargetDefinition(
            attribute: nil,
            name: nil,
            requiresRecreation: nil)

        return defaultInstance
    }()
}

public extension ResourceToImport {
    /**
     Default instance of the ResourceToImport structure.
     */
    static let __default: CloudformationModel.ResourceToImport = {
        let defaultInstance = CloudformationModel.ResourceToImport(
            logicalResourceId: "value",
            resourceIdentifier: ["Entry_0": "0"],
            resourceType: "0")

        return defaultInstance
    }()
}

public extension RollbackConfiguration {
    /**
     Default instance of the RollbackConfiguration structure.
     */
    static let __default: CloudformationModel.RollbackConfiguration = {
        let defaultInstance = CloudformationModel.RollbackConfiguration(
            monitoringTimeInMinutes: nil,
            rollbackTriggers: nil)

        return defaultInstance
    }()
}

public extension RollbackStackInput {
    /**
     Default instance of the RollbackStackInput structure.
     */
    static let __default: CloudformationModel.RollbackStackInput = {
        let defaultInstance = CloudformationModel.RollbackStackInput(
            clientRequestToken: nil,
            roleARN: nil,
            stackName: "0")

        return defaultInstance
    }()
}

public extension RollbackStackOutput {
    /**
     Default instance of the RollbackStackOutput structure.
     */
    static let __default: CloudformationModel.RollbackStackOutput = {
        let defaultInstance = CloudformationModel.RollbackStackOutput(
            stackId: nil)

        return defaultInstance
    }()
}

public extension RollbackStackOutputForRollbackStack {
    /**
     Default instance of the RollbackStackOutputForRollbackStack structure.
     */
    static let __default: CloudformationModel.RollbackStackOutputForRollbackStack = {
        let defaultInstance = CloudformationModel.RollbackStackOutputForRollbackStack(
            rollbackStackResult: RollbackStackOutput.__default)

        return defaultInstance
    }()
}

public extension RollbackTrigger {
    /**
     Default instance of the RollbackTrigger structure.
     */
    static let __default: CloudformationModel.RollbackTrigger = {
        let defaultInstance = CloudformationModel.RollbackTrigger(
            arn: "value",
            type: "value")

        return defaultInstance
    }()
}

public extension SetStackPolicyInput {
    /**
     Default instance of the SetStackPolicyInput structure.
     */
    static let __default: CloudformationModel.SetStackPolicyInput = {
        let defaultInstance = CloudformationModel.SetStackPolicyInput(
            stackName: "value",
            stackPolicyBody: nil,
            stackPolicyURL: nil)

        return defaultInstance
    }()
}

public extension SetTypeConfigurationInput {
    /**
     Default instance of the SetTypeConfigurationInput structure.
     */
    static let __default: CloudformationModel.SetTypeConfigurationInput = {
        let defaultInstance = CloudformationModel.SetTypeConfigurationInput(
            configuration: "0",
            configurationAlias: nil,
            type: nil,
            typeArn: nil,
            typeName: nil)

        return defaultInstance
    }()
}

public extension SetTypeConfigurationOutput {
    /**
     Default instance of the SetTypeConfigurationOutput structure.
     */
    static let __default: CloudformationModel.SetTypeConfigurationOutput = {
        let defaultInstance = CloudformationModel.SetTypeConfigurationOutput(
            configurationArn: nil)

        return defaultInstance
    }()
}

public extension SetTypeConfigurationOutputForSetTypeConfiguration {
    /**
     Default instance of the SetTypeConfigurationOutputForSetTypeConfiguration structure.
     */
    static let __default: CloudformationModel.SetTypeConfigurationOutputForSetTypeConfiguration = {
        let defaultInstance = CloudformationModel.SetTypeConfigurationOutputForSetTypeConfiguration(
            setTypeConfigurationResult: SetTypeConfigurationOutput.__default)

        return defaultInstance
    }()
}

public extension SetTypeDefaultVersionInput {
    /**
     Default instance of the SetTypeDefaultVersionInput structure.
     */
    static let __default: CloudformationModel.SetTypeDefaultVersionInput = {
        let defaultInstance = CloudformationModel.SetTypeDefaultVersionInput(
            arn: nil,
            type: nil,
            typeName: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension SetTypeDefaultVersionOutput {
    /**
     Default instance of the SetTypeDefaultVersionOutput structure.
     */
    static let __default: CloudformationModel.SetTypeDefaultVersionOutput = {
        let defaultInstance = CloudformationModel.SetTypeDefaultVersionOutput()

        return defaultInstance
    }()
}

public extension SetTypeDefaultVersionOutputForSetTypeDefaultVersion {
    /**
     Default instance of the SetTypeDefaultVersionOutputForSetTypeDefaultVersion structure.
     */
    static let __default: CloudformationModel.SetTypeDefaultVersionOutputForSetTypeDefaultVersion = {
        let defaultInstance = CloudformationModel.SetTypeDefaultVersionOutputForSetTypeDefaultVersion(
            setTypeDefaultVersionResult: SetTypeDefaultVersionOutput.__default)

        return defaultInstance
    }()
}

public extension SignalResourceInput {
    /**
     Default instance of the SignalResourceInput structure.
     */
    static let __default: CloudformationModel.SignalResourceInput = {
        let defaultInstance = CloudformationModel.SignalResourceInput(
            logicalResourceId: "value",
            stackName: "0",
            status: .__default,
            uniqueId: "0")

        return defaultInstance
    }()
}

public extension Stack {
    /**
     Default instance of the Stack structure.
     */
    static let __default: CloudformationModel.Stack = {
        let defaultInstance = CloudformationModel.Stack(
            capabilities: nil,
            changeSetId: nil,
            creationTime: "2013-02-18T17:00:00Z",
            deletionTime: nil,
            description: nil,
            disableRollback: nil,
            driftInformation: nil,
            enableTerminationProtection: nil,
            lastUpdatedTime: nil,
            notificationARNs: nil,
            outputs: nil,
            parameters: nil,
            parentId: nil,
            roleARN: nil,
            rollbackConfiguration: nil,
            rootId: nil,
            stackId: nil,
            stackName: "value",
            stackStatus: .__default,
            stackStatusReason: nil,
            tags: nil,
            timeoutInMinutes: nil)

        return defaultInstance
    }()
}

public extension StackDriftInformation {
    /**
     Default instance of the StackDriftInformation structure.
     */
    static let __default: CloudformationModel.StackDriftInformation = {
        let defaultInstance = CloudformationModel.StackDriftInformation(
            lastCheckTimestamp: nil,
            stackDriftStatus: .__default)

        return defaultInstance
    }()
}

public extension StackDriftInformationSummary {
    /**
     Default instance of the StackDriftInformationSummary structure.
     */
    static let __default: CloudformationModel.StackDriftInformationSummary = {
        let defaultInstance = CloudformationModel.StackDriftInformationSummary(
            lastCheckTimestamp: nil,
            stackDriftStatus: .__default)

        return defaultInstance
    }()
}

public extension StackEvent {
    /**
     Default instance of the StackEvent structure.
     */
    static let __default: CloudformationModel.StackEvent = {
        let defaultInstance = CloudformationModel.StackEvent(
            clientRequestToken: nil,
            eventId: "value",
            logicalResourceId: nil,
            physicalResourceId: nil,
            resourceProperties: nil,
            resourceStatus: nil,
            resourceStatusReason: nil,
            resourceType: nil,
            stackId: "value",
            stackName: "value",
            timestamp: "2013-02-18T17:00:00Z")

        return defaultInstance
    }()
}

public extension StackInstance {
    /**
     Default instance of the StackInstance structure.
     */
    static let __default: CloudformationModel.StackInstance = {
        let defaultInstance = CloudformationModel.StackInstance(
            account: nil,
            driftStatus: nil,
            lastDriftCheckTimestamp: nil,
            organizationalUnitId: nil,
            parameterOverrides: nil,
            region: nil,
            stackId: nil,
            stackInstanceStatus: nil,
            stackSetId: nil,
            status: nil,
            statusReason: nil)

        return defaultInstance
    }()
}

public extension StackInstanceComprehensiveStatus {
    /**
     Default instance of the StackInstanceComprehensiveStatus structure.
     */
    static let __default: CloudformationModel.StackInstanceComprehensiveStatus = {
        let defaultInstance = CloudformationModel.StackInstanceComprehensiveStatus(
            detailedStatus: nil)

        return defaultInstance
    }()
}

public extension StackInstanceFilter {
    /**
     Default instance of the StackInstanceFilter structure.
     */
    static let __default: CloudformationModel.StackInstanceFilter = {
        let defaultInstance = CloudformationModel.StackInstanceFilter(
            name: nil,
            values: nil)

        return defaultInstance
    }()
}

public extension StackInstanceNotFoundException {
    /**
     Default instance of the StackInstanceNotFoundException structure.
     */
    static let __default: CloudformationModel.StackInstanceNotFoundException = {
        let defaultInstance = CloudformationModel.StackInstanceNotFoundException()

        return defaultInstance
    }()
}

public extension StackInstanceSummary {
    /**
     Default instance of the StackInstanceSummary structure.
     */
    static let __default: CloudformationModel.StackInstanceSummary = {
        let defaultInstance = CloudformationModel.StackInstanceSummary(
            account: nil,
            driftStatus: nil,
            lastDriftCheckTimestamp: nil,
            organizationalUnitId: nil,
            region: nil,
            stackId: nil,
            stackInstanceStatus: nil,
            stackSetId: nil,
            status: nil,
            statusReason: nil)

        return defaultInstance
    }()
}

public extension StackNotFoundException {
    /**
     Default instance of the StackNotFoundException structure.
     */
    static let __default: CloudformationModel.StackNotFoundException = {
        let defaultInstance = CloudformationModel.StackNotFoundException()

        return defaultInstance
    }()
}

public extension StackResource {
    /**
     Default instance of the StackResource structure.
     */
    static let __default: CloudformationModel.StackResource = {
        let defaultInstance = CloudformationModel.StackResource(
            description: nil,
            driftInformation: nil,
            logicalResourceId: "value",
            moduleInfo: nil,
            physicalResourceId: nil,
            resourceStatus: .__default,
            resourceStatusReason: nil,
            resourceType: "0",
            stackId: nil,
            stackName: nil,
            timestamp: "2013-02-18T17:00:00Z")

        return defaultInstance
    }()
}

public extension StackResourceDetail {
    /**
     Default instance of the StackResourceDetail structure.
     */
    static let __default: CloudformationModel.StackResourceDetail = {
        let defaultInstance = CloudformationModel.StackResourceDetail(
            description: nil,
            driftInformation: nil,
            lastUpdatedTimestamp: "2013-02-18T17:00:00Z",
            logicalResourceId: "value",
            metadata: nil,
            moduleInfo: nil,
            physicalResourceId: nil,
            resourceStatus: .__default,
            resourceStatusReason: nil,
            resourceType: "0",
            stackId: nil,
            stackName: nil)

        return defaultInstance
    }()
}

public extension StackResourceDrift {
    /**
     Default instance of the StackResourceDrift structure.
     */
    static let __default: CloudformationModel.StackResourceDrift = {
        let defaultInstance = CloudformationModel.StackResourceDrift(
            actualProperties: nil,
            expectedProperties: nil,
            logicalResourceId: "value",
            moduleInfo: nil,
            physicalResourceId: nil,
            physicalResourceIdContext: nil,
            propertyDifferences: nil,
            resourceType: "0",
            stackId: "value",
            stackResourceDriftStatus: .__default,
            timestamp: "2013-02-18T17:00:00Z")

        return defaultInstance
    }()
}

public extension StackResourceDriftInformation {
    /**
     Default instance of the StackResourceDriftInformation structure.
     */
    static let __default: CloudformationModel.StackResourceDriftInformation = {
        let defaultInstance = CloudformationModel.StackResourceDriftInformation(
            lastCheckTimestamp: nil,
            stackResourceDriftStatus: .__default)

        return defaultInstance
    }()
}

public extension StackResourceDriftInformationSummary {
    /**
     Default instance of the StackResourceDriftInformationSummary structure.
     */
    static let __default: CloudformationModel.StackResourceDriftInformationSummary = {
        let defaultInstance = CloudformationModel.StackResourceDriftInformationSummary(
            lastCheckTimestamp: nil,
            stackResourceDriftStatus: .__default)

        return defaultInstance
    }()
}

public extension StackResourceSummary {
    /**
     Default instance of the StackResourceSummary structure.
     */
    static let __default: CloudformationModel.StackResourceSummary = {
        let defaultInstance = CloudformationModel.StackResourceSummary(
            driftInformation: nil,
            lastUpdatedTimestamp: "2013-02-18T17:00:00Z",
            logicalResourceId: "value",
            moduleInfo: nil,
            physicalResourceId: nil,
            resourceStatus: .__default,
            resourceStatusReason: nil,
            resourceType: "0")

        return defaultInstance
    }()
}

public extension StackSet {
    /**
     Default instance of the StackSet structure.
     */
    static let __default: CloudformationModel.StackSet = {
        let defaultInstance = CloudformationModel.StackSet(
            administrationRoleARN: nil,
            autoDeployment: nil,
            capabilities: nil,
            description: nil,
            executionRoleName: nil,
            managedExecution: nil,
            organizationalUnitIds: nil,
            parameters: nil,
            permissionModel: nil,
            stackSetARN: nil,
            stackSetDriftDetectionDetails: nil,
            stackSetId: nil,
            stackSetName: nil,
            status: nil,
            tags: nil,
            templateBody: nil)

        return defaultInstance
    }()
}

public extension StackSetDriftDetectionDetails {
    /**
     Default instance of the StackSetDriftDetectionDetails structure.
     */
    static let __default: CloudformationModel.StackSetDriftDetectionDetails = {
        let defaultInstance = CloudformationModel.StackSetDriftDetectionDetails(
            driftDetectionStatus: nil,
            driftStatus: nil,
            driftedStackInstancesCount: nil,
            failedStackInstancesCount: nil,
            inProgressStackInstancesCount: nil,
            inSyncStackInstancesCount: nil,
            lastDriftCheckTimestamp: nil,
            totalStackInstancesCount: nil)

        return defaultInstance
    }()
}

public extension StackSetNotEmptyException {
    /**
     Default instance of the StackSetNotEmptyException structure.
     */
    static let __default: CloudformationModel.StackSetNotEmptyException = {
        let defaultInstance = CloudformationModel.StackSetNotEmptyException()

        return defaultInstance
    }()
}

public extension StackSetNotFoundException {
    /**
     Default instance of the StackSetNotFoundException structure.
     */
    static let __default: CloudformationModel.StackSetNotFoundException = {
        let defaultInstance = CloudformationModel.StackSetNotFoundException()

        return defaultInstance
    }()
}

public extension StackSetOperation {
    /**
     Default instance of the StackSetOperation structure.
     */
    static let __default: CloudformationModel.StackSetOperation = {
        let defaultInstance = CloudformationModel.StackSetOperation(
            action: nil,
            administrationRoleARN: nil,
            creationTimestamp: nil,
            deploymentTargets: nil,
            endTimestamp: nil,
            executionRoleName: nil,
            operationId: nil,
            operationPreferences: nil,
            retainStacks: nil,
            stackSetDriftDetectionDetails: nil,
            stackSetId: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension StackSetOperationPreferences {
    /**
     Default instance of the StackSetOperationPreferences structure.
     */
    static let __default: CloudformationModel.StackSetOperationPreferences = {
        let defaultInstance = CloudformationModel.StackSetOperationPreferences(
            failureToleranceCount: nil,
            failureTolerancePercentage: nil,
            maxConcurrentCount: nil,
            maxConcurrentPercentage: nil,
            regionConcurrencyType: nil,
            regionOrder: nil)

        return defaultInstance
    }()
}

public extension StackSetOperationResultSummary {
    /**
     Default instance of the StackSetOperationResultSummary structure.
     */
    static let __default: CloudformationModel.StackSetOperationResultSummary = {
        let defaultInstance = CloudformationModel.StackSetOperationResultSummary(
            account: nil,
            accountGateResult: nil,
            organizationalUnitId: nil,
            region: nil,
            status: nil,
            statusReason: nil)

        return defaultInstance
    }()
}

public extension StackSetOperationSummary {
    /**
     Default instance of the StackSetOperationSummary structure.
     */
    static let __default: CloudformationModel.StackSetOperationSummary = {
        let defaultInstance = CloudformationModel.StackSetOperationSummary(
            action: nil,
            creationTimestamp: nil,
            endTimestamp: nil,
            operationId: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension StackSetSummary {
    /**
     Default instance of the StackSetSummary structure.
     */
    static let __default: CloudformationModel.StackSetSummary = {
        let defaultInstance = CloudformationModel.StackSetSummary(
            autoDeployment: nil,
            description: nil,
            driftStatus: nil,
            lastDriftCheckTimestamp: nil,
            managedExecution: nil,
            permissionModel: nil,
            stackSetId: nil,
            stackSetName: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension StackSummary {
    /**
     Default instance of the StackSummary structure.
     */
    static let __default: CloudformationModel.StackSummary = {
        let defaultInstance = CloudformationModel.StackSummary(
            creationTime: "2013-02-18T17:00:00Z",
            deletionTime: nil,
            driftInformation: nil,
            lastUpdatedTime: nil,
            parentId: nil,
            rootId: nil,
            stackId: nil,
            stackName: "value",
            stackStatus: .__default,
            stackStatusReason: nil,
            templateDescription: nil)

        return defaultInstance
    }()
}

public extension StaleRequestException {
    /**
     Default instance of the StaleRequestException structure.
     */
    static let __default: CloudformationModel.StaleRequestException = {
        let defaultInstance = CloudformationModel.StaleRequestException()

        return defaultInstance
    }()
}

public extension StopStackSetOperationInput {
    /**
     Default instance of the StopStackSetOperationInput structure.
     */
    static let __default: CloudformationModel.StopStackSetOperationInput = {
        let defaultInstance = CloudformationModel.StopStackSetOperationInput(
            callAs: nil,
            operationId: "0",
            stackSetName: "value")

        return defaultInstance
    }()
}

public extension StopStackSetOperationOutput {
    /**
     Default instance of the StopStackSetOperationOutput structure.
     */
    static let __default: CloudformationModel.StopStackSetOperationOutput = {
        let defaultInstance = CloudformationModel.StopStackSetOperationOutput()

        return defaultInstance
    }()
}

public extension StopStackSetOperationOutputForStopStackSetOperation {
    /**
     Default instance of the StopStackSetOperationOutputForStopStackSetOperation structure.
     */
    static let __default: CloudformationModel.StopStackSetOperationOutputForStopStackSetOperation = {
        let defaultInstance = CloudformationModel.StopStackSetOperationOutputForStopStackSetOperation(
            stopStackSetOperationResult: StopStackSetOperationOutput.__default)

        return defaultInstance
    }()
}

public extension Tag {
    /**
     Default instance of the Tag structure.
     */
    static let __default: CloudformationModel.Tag = {
        let defaultInstance = CloudformationModel.Tag(
            key: "0",
            value: "0")

        return defaultInstance
    }()
}

public extension TemplateParameter {
    /**
     Default instance of the TemplateParameter structure.
     */
    static let __default: CloudformationModel.TemplateParameter = {
        let defaultInstance = CloudformationModel.TemplateParameter(
            defaultValue: nil,
            description: nil,
            noEcho: nil,
            parameterKey: nil)

        return defaultInstance
    }()
}

public extension TestTypeInput {
    /**
     Default instance of the TestTypeInput structure.
     */
    static let __default: CloudformationModel.TestTypeInput = {
        let defaultInstance = CloudformationModel.TestTypeInput(
            arn: nil,
            logDeliveryBucket: nil,
            type: nil,
            typeName: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension TestTypeOutput {
    /**
     Default instance of the TestTypeOutput structure.
     */
    static let __default: CloudformationModel.TestTypeOutput = {
        let defaultInstance = CloudformationModel.TestTypeOutput(
            typeVersionArn: nil)

        return defaultInstance
    }()
}

public extension TestTypeOutputForTestType {
    /**
     Default instance of the TestTypeOutputForTestType structure.
     */
    static let __default: CloudformationModel.TestTypeOutputForTestType = {
        let defaultInstance = CloudformationModel.TestTypeOutputForTestType(
            testTypeResult: TestTypeOutput.__default)

        return defaultInstance
    }()
}

public extension TokenAlreadyExistsException {
    /**
     Default instance of the TokenAlreadyExistsException structure.
     */
    static let __default: CloudformationModel.TokenAlreadyExistsException = {
        let defaultInstance = CloudformationModel.TokenAlreadyExistsException()

        return defaultInstance
    }()
}

public extension TypeConfigurationDetails {
    /**
     Default instance of the TypeConfigurationDetails structure.
     */
    static let __default: CloudformationModel.TypeConfigurationDetails = {
        let defaultInstance = CloudformationModel.TypeConfigurationDetails(
            alias: nil,
            arn: nil,
            configuration: nil,
            isDefaultConfiguration: nil,
            lastUpdated: nil,
            typeArn: nil,
            typeName: nil)

        return defaultInstance
    }()
}

public extension TypeConfigurationIdentifier {
    /**
     Default instance of the TypeConfigurationIdentifier structure.
     */
    static let __default: CloudformationModel.TypeConfigurationIdentifier = {
        let defaultInstance = CloudformationModel.TypeConfigurationIdentifier(
            type: nil,
            typeArn: nil,
            typeConfigurationAlias: nil,
            typeConfigurationArn: nil,
            typeName: nil)

        return defaultInstance
    }()
}

public extension TypeConfigurationNotFoundException {
    /**
     Default instance of the TypeConfigurationNotFoundException structure.
     */
    static let __default: CloudformationModel.TypeConfigurationNotFoundException = {
        let defaultInstance = CloudformationModel.TypeConfigurationNotFoundException()

        return defaultInstance
    }()
}

public extension TypeFilters {
    /**
     Default instance of the TypeFilters structure.
     */
    static let __default: CloudformationModel.TypeFilters = {
        let defaultInstance = CloudformationModel.TypeFilters(
            category: nil,
            publisherId: nil,
            typeNamePrefix: nil)

        return defaultInstance
    }()
}

public extension TypeNotFoundException {
    /**
     Default instance of the TypeNotFoundException structure.
     */
    static let __default: CloudformationModel.TypeNotFoundException = {
        let defaultInstance = CloudformationModel.TypeNotFoundException()

        return defaultInstance
    }()
}

public extension TypeSummary {
    /**
     Default instance of the TypeSummary structure.
     */
    static let __default: CloudformationModel.TypeSummary = {
        let defaultInstance = CloudformationModel.TypeSummary(
            defaultVersionId: nil,
            description: nil,
            isActivated: nil,
            lastUpdated: nil,
            latestPublicVersion: nil,
            originalTypeName: nil,
            publicVersionNumber: nil,
            publisherId: nil,
            publisherIdentity: nil,
            publisherName: nil,
            type: nil,
            typeArn: nil,
            typeName: nil)

        return defaultInstance
    }()
}

public extension TypeVersionSummary {
    /**
     Default instance of the TypeVersionSummary structure.
     */
    static let __default: CloudformationModel.TypeVersionSummary = {
        let defaultInstance = CloudformationModel.TypeVersionSummary(
            arn: nil,
            description: nil,
            isDefaultVersion: nil,
            publicVersionNumber: nil,
            timeCreated: nil,
            type: nil,
            typeName: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension UpdateStackInput {
    /**
     Default instance of the UpdateStackInput structure.
     */
    static let __default: CloudformationModel.UpdateStackInput = {
        let defaultInstance = CloudformationModel.UpdateStackInput(
            capabilities: nil,
            clientRequestToken: nil,
            disableRollback: nil,
            notificationARNs: nil,
            parameters: nil,
            resourceTypes: nil,
            roleARN: nil,
            rollbackConfiguration: nil,
            stackName: "value",
            stackPolicyBody: nil,
            stackPolicyDuringUpdateBody: nil,
            stackPolicyDuringUpdateURL: nil,
            stackPolicyURL: nil,
            tags: nil,
            templateBody: nil,
            templateURL: nil,
            usePreviousTemplate: nil)

        return defaultInstance
    }()
}

public extension UpdateStackInstancesInput {
    /**
     Default instance of the UpdateStackInstancesInput structure.
     */
    static let __default: CloudformationModel.UpdateStackInstancesInput = {
        let defaultInstance = CloudformationModel.UpdateStackInstancesInput(
            accounts: nil,
            callAs: nil,
            deploymentTargets: nil,
            operationId: nil,
            operationPreferences: nil,
            parameterOverrides: nil,
            regions: [],
            stackSetName: "")

        return defaultInstance
    }()
}

public extension UpdateStackInstancesOutput {
    /**
     Default instance of the UpdateStackInstancesOutput structure.
     */
    static let __default: CloudformationModel.UpdateStackInstancesOutput = {
        let defaultInstance = CloudformationModel.UpdateStackInstancesOutput(
            operationId: nil)

        return defaultInstance
    }()
}

public extension UpdateStackInstancesOutputForUpdateStackInstances {
    /**
     Default instance of the UpdateStackInstancesOutputForUpdateStackInstances structure.
     */
    static let __default: CloudformationModel.UpdateStackInstancesOutputForUpdateStackInstances = {
        let defaultInstance = CloudformationModel.UpdateStackInstancesOutputForUpdateStackInstances(
            updateStackInstancesResult: UpdateStackInstancesOutput.__default)

        return defaultInstance
    }()
}

public extension UpdateStackOutput {
    /**
     Default instance of the UpdateStackOutput structure.
     */
    static let __default: CloudformationModel.UpdateStackOutput = {
        let defaultInstance = CloudformationModel.UpdateStackOutput(
            stackId: nil)

        return defaultInstance
    }()
}

public extension UpdateStackOutputForUpdateStack {
    /**
     Default instance of the UpdateStackOutputForUpdateStack structure.
     */
    static let __default: CloudformationModel.UpdateStackOutputForUpdateStack = {
        let defaultInstance = CloudformationModel.UpdateStackOutputForUpdateStack(
            updateStackResult: UpdateStackOutput.__default)

        return defaultInstance
    }()
}

public extension UpdateStackSetInput {
    /**
     Default instance of the UpdateStackSetInput structure.
     */
    static let __default: CloudformationModel.UpdateStackSetInput = {
        let defaultInstance = CloudformationModel.UpdateStackSetInput(
            accounts: nil,
            administrationRoleARN: nil,
            autoDeployment: nil,
            callAs: nil,
            capabilities: nil,
            deploymentTargets: nil,
            description: nil,
            executionRoleName: nil,
            managedExecution: nil,
            operationId: nil,
            operationPreferences: nil,
            parameters: nil,
            permissionModel: nil,
            regions: nil,
            stackSetName: "value",
            tags: nil,
            templateBody: nil,
            templateURL: nil,
            usePreviousTemplate: nil)

        return defaultInstance
    }()
}

public extension UpdateStackSetOutput {
    /**
     Default instance of the UpdateStackSetOutput structure.
     */
    static let __default: CloudformationModel.UpdateStackSetOutput = {
        let defaultInstance = CloudformationModel.UpdateStackSetOutput(
            operationId: nil)

        return defaultInstance
    }()
}

public extension UpdateStackSetOutputForUpdateStackSet {
    /**
     Default instance of the UpdateStackSetOutputForUpdateStackSet structure.
     */
    static let __default: CloudformationModel.UpdateStackSetOutputForUpdateStackSet = {
        let defaultInstance = CloudformationModel.UpdateStackSetOutputForUpdateStackSet(
            updateStackSetResult: UpdateStackSetOutput.__default)

        return defaultInstance
    }()
}

public extension UpdateTerminationProtectionInput {
    /**
     Default instance of the UpdateTerminationProtectionInput structure.
     */
    static let __default: CloudformationModel.UpdateTerminationProtectionInput = {
        let defaultInstance = CloudformationModel.UpdateTerminationProtectionInput(
            enableTerminationProtection: false,
            stackName: "0")

        return defaultInstance
    }()
}

public extension UpdateTerminationProtectionOutput {
    /**
     Default instance of the UpdateTerminationProtectionOutput structure.
     */
    static let __default: CloudformationModel.UpdateTerminationProtectionOutput = {
        let defaultInstance = CloudformationModel.UpdateTerminationProtectionOutput(
            stackId: nil)

        return defaultInstance
    }()
}

public extension UpdateTerminationProtectionOutputForUpdateTerminationProtection {
    /**
     Default instance of the UpdateTerminationProtectionOutputForUpdateTerminationProtection structure.
     */
    static let __default: CloudformationModel.UpdateTerminationProtectionOutputForUpdateTerminationProtection = {
        let defaultInstance = CloudformationModel.UpdateTerminationProtectionOutputForUpdateTerminationProtection(
            updateTerminationProtectionResult: UpdateTerminationProtectionOutput.__default)

        return defaultInstance
    }()
}

public extension ValidateTemplateInput {
    /**
     Default instance of the ValidateTemplateInput structure.
     */
    static let __default: CloudformationModel.ValidateTemplateInput = {
        let defaultInstance = CloudformationModel.ValidateTemplateInput(
            templateBody: nil,
            templateURL: nil)

        return defaultInstance
    }()
}

public extension ValidateTemplateOutput {
    /**
     Default instance of the ValidateTemplateOutput structure.
     */
    static let __default: CloudformationModel.ValidateTemplateOutput = {
        let defaultInstance = CloudformationModel.ValidateTemplateOutput(
            capabilities: nil,
            capabilitiesReason: nil,
            declaredTransforms: nil,
            description: nil,
            parameters: nil)

        return defaultInstance
    }()
}

public extension ValidateTemplateOutputForValidateTemplate {
    /**
     Default instance of the ValidateTemplateOutputForValidateTemplate structure.
     */
    static let __default: CloudformationModel.ValidateTemplateOutputForValidateTemplate = {
        let defaultInstance = CloudformationModel.ValidateTemplateOutputForValidateTemplate(
            validateTemplateResult: ValidateTemplateOutput.__default)

        return defaultInstance
    }()
}
