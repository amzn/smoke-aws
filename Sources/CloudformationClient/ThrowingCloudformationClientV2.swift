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
// ThrowingCloudformationClientV2.swift
// CloudformationClient
//

import Foundation
import CloudformationModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the Cloudformation service that by default always throws from its methods.
 */
public struct ThrowingCloudformationClientV2: CloudformationClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    let error: CloudformationError
    let activateTypeOverride: ActivateTypeFunctionType?
    let batchDescribeTypeConfigurationsOverride: BatchDescribeTypeConfigurationsFunctionType?
    let cancelUpdateStackOverride: CancelUpdateStackFunctionType?
    let continueUpdateRollbackOverride: ContinueUpdateRollbackFunctionType?
    let createChangeSetOverride: CreateChangeSetFunctionType?
    let createStackOverride: CreateStackFunctionType?
    let createStackInstancesOverride: CreateStackInstancesFunctionType?
    let createStackSetOverride: CreateStackSetFunctionType?
    let deactivateTypeOverride: DeactivateTypeFunctionType?
    let deleteChangeSetOverride: DeleteChangeSetFunctionType?
    let deleteStackOverride: DeleteStackFunctionType?
    let deleteStackInstancesOverride: DeleteStackInstancesFunctionType?
    let deleteStackSetOverride: DeleteStackSetFunctionType?
    let deregisterTypeOverride: DeregisterTypeFunctionType?
    let describeAccountLimitsOverride: DescribeAccountLimitsFunctionType?
    let describeChangeSetOverride: DescribeChangeSetFunctionType?
    let describeChangeSetHooksOverride: DescribeChangeSetHooksFunctionType?
    let describePublisherOverride: DescribePublisherFunctionType?
    let describeStackDriftDetectionStatusOverride: DescribeStackDriftDetectionStatusFunctionType?
    let describeStackEventsOverride: DescribeStackEventsFunctionType?
    let describeStackInstanceOverride: DescribeStackInstanceFunctionType?
    let describeStackResourceOverride: DescribeStackResourceFunctionType?
    let describeStackResourceDriftsOverride: DescribeStackResourceDriftsFunctionType?
    let describeStackResourcesOverride: DescribeStackResourcesFunctionType?
    let describeStackSetOverride: DescribeStackSetFunctionType?
    let describeStackSetOperationOverride: DescribeStackSetOperationFunctionType?
    let describeStacksOverride: DescribeStacksFunctionType?
    let describeTypeOverride: DescribeTypeFunctionType?
    let describeTypeRegistrationOverride: DescribeTypeRegistrationFunctionType?
    let detectStackDriftOverride: DetectStackDriftFunctionType?
    let detectStackResourceDriftOverride: DetectStackResourceDriftFunctionType?
    let detectStackSetDriftOverride: DetectStackSetDriftFunctionType?
    let estimateTemplateCostOverride: EstimateTemplateCostFunctionType?
    let executeChangeSetOverride: ExecuteChangeSetFunctionType?
    let getStackPolicyOverride: GetStackPolicyFunctionType?
    let getTemplateOverride: GetTemplateFunctionType?
    let getTemplateSummaryOverride: GetTemplateSummaryFunctionType?
    let importStacksToStackSetOverride: ImportStacksToStackSetFunctionType?
    let listChangeSetsOverride: ListChangeSetsFunctionType?
    let listExportsOverride: ListExportsFunctionType?
    let listImportsOverride: ListImportsFunctionType?
    let listStackInstancesOverride: ListStackInstancesFunctionType?
    let listStackResourcesOverride: ListStackResourcesFunctionType?
    let listStackSetOperationResultsOverride: ListStackSetOperationResultsFunctionType?
    let listStackSetOperationsOverride: ListStackSetOperationsFunctionType?
    let listStackSetsOverride: ListStackSetsFunctionType?
    let listStacksOverride: ListStacksFunctionType?
    let listTypeRegistrationsOverride: ListTypeRegistrationsFunctionType?
    let listTypeVersionsOverride: ListTypeVersionsFunctionType?
    let listTypesOverride: ListTypesFunctionType?
    let publishTypeOverride: PublishTypeFunctionType?
    let recordHandlerProgressOverride: RecordHandlerProgressFunctionType?
    let registerPublisherOverride: RegisterPublisherFunctionType?
    let registerTypeOverride: RegisterTypeFunctionType?
    let rollbackStackOverride: RollbackStackFunctionType?
    let setStackPolicyOverride: SetStackPolicyFunctionType?
    let setTypeConfigurationOverride: SetTypeConfigurationFunctionType?
    let setTypeDefaultVersionOverride: SetTypeDefaultVersionFunctionType?
    let signalResourceOverride: SignalResourceFunctionType?
    let stopStackSetOperationOverride: StopStackSetOperationFunctionType?
    let testTypeOverride: TestTypeFunctionType?
    let updateStackOverride: UpdateStackFunctionType?
    let updateStackInstancesOverride: UpdateStackInstancesFunctionType?
    let updateStackSetOverride: UpdateStackSetFunctionType?
    let updateTerminationProtectionOverride: UpdateTerminationProtectionFunctionType?
    let validateTemplateOverride: ValidateTemplateFunctionType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: CloudformationError,
            activateType: ActivateTypeFunctionType? = nil,
            batchDescribeTypeConfigurations: BatchDescribeTypeConfigurationsFunctionType? = nil,
            cancelUpdateStack: CancelUpdateStackFunctionType? = nil,
            continueUpdateRollback: ContinueUpdateRollbackFunctionType? = nil,
            createChangeSet: CreateChangeSetFunctionType? = nil,
            createStack: CreateStackFunctionType? = nil,
            createStackInstances: CreateStackInstancesFunctionType? = nil,
            createStackSet: CreateStackSetFunctionType? = nil,
            deactivateType: DeactivateTypeFunctionType? = nil,
            deleteChangeSet: DeleteChangeSetFunctionType? = nil,
            deleteStack: DeleteStackFunctionType? = nil,
            deleteStackInstances: DeleteStackInstancesFunctionType? = nil,
            deleteStackSet: DeleteStackSetFunctionType? = nil,
            deregisterType: DeregisterTypeFunctionType? = nil,
            describeAccountLimits: DescribeAccountLimitsFunctionType? = nil,
            describeChangeSet: DescribeChangeSetFunctionType? = nil,
            describeChangeSetHooks: DescribeChangeSetHooksFunctionType? = nil,
            describePublisher: DescribePublisherFunctionType? = nil,
            describeStackDriftDetectionStatus: DescribeStackDriftDetectionStatusFunctionType? = nil,
            describeStackEvents: DescribeStackEventsFunctionType? = nil,
            describeStackInstance: DescribeStackInstanceFunctionType? = nil,
            describeStackResource: DescribeStackResourceFunctionType? = nil,
            describeStackResourceDrifts: DescribeStackResourceDriftsFunctionType? = nil,
            describeStackResources: DescribeStackResourcesFunctionType? = nil,
            describeStackSet: DescribeStackSetFunctionType? = nil,
            describeStackSetOperation: DescribeStackSetOperationFunctionType? = nil,
            describeStacks: DescribeStacksFunctionType? = nil,
            describeType: DescribeTypeFunctionType? = nil,
            describeTypeRegistration: DescribeTypeRegistrationFunctionType? = nil,
            detectStackDrift: DetectStackDriftFunctionType? = nil,
            detectStackResourceDrift: DetectStackResourceDriftFunctionType? = nil,
            detectStackSetDrift: DetectStackSetDriftFunctionType? = nil,
            estimateTemplateCost: EstimateTemplateCostFunctionType? = nil,
            executeChangeSet: ExecuteChangeSetFunctionType? = nil,
            getStackPolicy: GetStackPolicyFunctionType? = nil,
            getTemplate: GetTemplateFunctionType? = nil,
            getTemplateSummary: GetTemplateSummaryFunctionType? = nil,
            importStacksToStackSet: ImportStacksToStackSetFunctionType? = nil,
            listChangeSets: ListChangeSetsFunctionType? = nil,
            listExports: ListExportsFunctionType? = nil,
            listImports: ListImportsFunctionType? = nil,
            listStackInstances: ListStackInstancesFunctionType? = nil,
            listStackResources: ListStackResourcesFunctionType? = nil,
            listStackSetOperationResults: ListStackSetOperationResultsFunctionType? = nil,
            listStackSetOperations: ListStackSetOperationsFunctionType? = nil,
            listStackSets: ListStackSetsFunctionType? = nil,
            listStacks: ListStacksFunctionType? = nil,
            listTypeRegistrations: ListTypeRegistrationsFunctionType? = nil,
            listTypeVersions: ListTypeVersionsFunctionType? = nil,
            listTypes: ListTypesFunctionType? = nil,
            publishType: PublishTypeFunctionType? = nil,
            recordHandlerProgress: RecordHandlerProgressFunctionType? = nil,
            registerPublisher: RegisterPublisherFunctionType? = nil,
            registerType: RegisterTypeFunctionType? = nil,
            rollbackStack: RollbackStackFunctionType? = nil,
            setStackPolicy: SetStackPolicyFunctionType? = nil,
            setTypeConfiguration: SetTypeConfigurationFunctionType? = nil,
            setTypeDefaultVersion: SetTypeDefaultVersionFunctionType? = nil,
            signalResource: SignalResourceFunctionType? = nil,
            stopStackSetOperation: StopStackSetOperationFunctionType? = nil,
            testType: TestTypeFunctionType? = nil,
            updateStack: UpdateStackFunctionType? = nil,
            updateStackInstances: UpdateStackInstancesFunctionType? = nil,
            updateStackSet: UpdateStackSetFunctionType? = nil,
            updateTerminationProtection: UpdateTerminationProtectionFunctionType? = nil,
            validateTemplate: ValidateTemplateFunctionType? = nil) {
        self.error = error
        self.activateTypeOverride = activateType
        self.batchDescribeTypeConfigurationsOverride = batchDescribeTypeConfigurations
        self.cancelUpdateStackOverride = cancelUpdateStack
        self.continueUpdateRollbackOverride = continueUpdateRollback
        self.createChangeSetOverride = createChangeSet
        self.createStackOverride = createStack
        self.createStackInstancesOverride = createStackInstances
        self.createStackSetOverride = createStackSet
        self.deactivateTypeOverride = deactivateType
        self.deleteChangeSetOverride = deleteChangeSet
        self.deleteStackOverride = deleteStack
        self.deleteStackInstancesOverride = deleteStackInstances
        self.deleteStackSetOverride = deleteStackSet
        self.deregisterTypeOverride = deregisterType
        self.describeAccountLimitsOverride = describeAccountLimits
        self.describeChangeSetOverride = describeChangeSet
        self.describeChangeSetHooksOverride = describeChangeSetHooks
        self.describePublisherOverride = describePublisher
        self.describeStackDriftDetectionStatusOverride = describeStackDriftDetectionStatus
        self.describeStackEventsOverride = describeStackEvents
        self.describeStackInstanceOverride = describeStackInstance
        self.describeStackResourceOverride = describeStackResource
        self.describeStackResourceDriftsOverride = describeStackResourceDrifts
        self.describeStackResourcesOverride = describeStackResources
        self.describeStackSetOverride = describeStackSet
        self.describeStackSetOperationOverride = describeStackSetOperation
        self.describeStacksOverride = describeStacks
        self.describeTypeOverride = describeType
        self.describeTypeRegistrationOverride = describeTypeRegistration
        self.detectStackDriftOverride = detectStackDrift
        self.detectStackResourceDriftOverride = detectStackResourceDrift
        self.detectStackSetDriftOverride = detectStackSetDrift
        self.estimateTemplateCostOverride = estimateTemplateCost
        self.executeChangeSetOverride = executeChangeSet
        self.getStackPolicyOverride = getStackPolicy
        self.getTemplateOverride = getTemplate
        self.getTemplateSummaryOverride = getTemplateSummary
        self.importStacksToStackSetOverride = importStacksToStackSet
        self.listChangeSetsOverride = listChangeSets
        self.listExportsOverride = listExports
        self.listImportsOverride = listImports
        self.listStackInstancesOverride = listStackInstances
        self.listStackResourcesOverride = listStackResources
        self.listStackSetOperationResultsOverride = listStackSetOperationResults
        self.listStackSetOperationsOverride = listStackSetOperations
        self.listStackSetsOverride = listStackSets
        self.listStacksOverride = listStacks
        self.listTypeRegistrationsOverride = listTypeRegistrations
        self.listTypeVersionsOverride = listTypeVersions
        self.listTypesOverride = listTypes
        self.publishTypeOverride = publishType
        self.recordHandlerProgressOverride = recordHandlerProgress
        self.registerPublisherOverride = registerPublisher
        self.registerTypeOverride = registerType
        self.rollbackStackOverride = rollbackStack
        self.setStackPolicyOverride = setStackPolicy
        self.setTypeConfigurationOverride = setTypeConfiguration
        self.setTypeDefaultVersionOverride = setTypeDefaultVersion
        self.signalResourceOverride = signalResource
        self.stopStackSetOperationOverride = stopStackSetOperation
        self.testTypeOverride = testType
        self.updateStackOverride = updateStack
        self.updateStackInstancesOverride = updateStackInstances
        self.updateStackSetOverride = updateStackSet
        self.updateTerminationProtectionOverride = updateTerminationProtection
        self.validateTemplateOverride = validateTemplate
    }

    /**
     Invokes the ActivateType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ActivateTypeInput object being passed to this operation.
     - Returns: The ActivateTypeOutputForActivateType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func activateType(
            input: CloudformationModel.ActivateTypeInput) async throws -> CloudformationModel.ActivateTypeOutputForActivateType {
        if let activateTypeOverride = activateTypeOverride {
            return try await activateTypeOverride(input)
        }

        throw error
    }

    /**
     Invokes the BatchDescribeTypeConfigurations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BatchDescribeTypeConfigurationsInput object being passed to this operation.
     - Returns: The BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeConfigurationNotFound.
     */
    public func batchDescribeTypeConfigurations(
            input: CloudformationModel.BatchDescribeTypeConfigurationsInput) async throws -> CloudformationModel.BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations {
        if let batchDescribeTypeConfigurationsOverride = batchDescribeTypeConfigurationsOverride {
            return try await batchDescribeTypeConfigurationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the CancelUpdateStack operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelUpdateStackInput object being passed to this operation.
     - Throws: tokenAlreadyExists.
     */
    public func cancelUpdateStack(
            input: CloudformationModel.CancelUpdateStackInput) async throws {
        if let cancelUpdateStackOverride = cancelUpdateStackOverride {
            return try await cancelUpdateStackOverride(input)
        }

        throw error
    }

    /**
     Invokes the ContinueUpdateRollback operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ContinueUpdateRollbackInput object being passed to this operation.
     - Returns: The ContinueUpdateRollbackOutputForContinueUpdateRollback object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: tokenAlreadyExists.
     */
    public func continueUpdateRollback(
            input: CloudformationModel.ContinueUpdateRollbackInput) async throws -> CloudformationModel.ContinueUpdateRollbackOutputForContinueUpdateRollback {
        if let continueUpdateRollbackOverride = continueUpdateRollbackOverride {
            return try await continueUpdateRollbackOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateChangeSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateChangeSetInput object being passed to this operation.
     - Returns: The CreateChangeSetOutputForCreateChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: alreadyExists, insufficientCapabilities, limitExceeded.
     */
    public func createChangeSet(
            input: CloudformationModel.CreateChangeSetInput) async throws -> CloudformationModel.CreateChangeSetOutputForCreateChangeSet {
        if let createChangeSetOverride = createChangeSetOverride {
            return try await createChangeSetOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateStack operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateStackInput object being passed to this operation.
     - Returns: The CreateStackOutputForCreateStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: alreadyExists, insufficientCapabilities, limitExceeded, tokenAlreadyExists.
     */
    public func createStack(
            input: CloudformationModel.CreateStackInput) async throws -> CloudformationModel.CreateStackOutputForCreateStack {
        if let createStackOverride = createStackOverride {
            return try await createStackOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateStackInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateStackInstancesInput object being passed to this operation.
     - Returns: The CreateStackInstancesOutputForCreateStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, limitExceeded, operationIdAlreadyExists, operationInProgress, stackSetNotFound, staleRequest.
     */
    public func createStackInstances(
            input: CloudformationModel.CreateStackInstancesInput) async throws -> CloudformationModel.CreateStackInstancesOutputForCreateStackInstances {
        if let createStackInstancesOverride = createStackInstancesOverride {
            return try await createStackInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateStackSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateStackSetInput object being passed to this operation.
     - Returns: The CreateStackSetOutputForCreateStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: createdButModified, limitExceeded, nameAlreadyExists.
     */
    public func createStackSet(
            input: CloudformationModel.CreateStackSetInput) async throws -> CloudformationModel.CreateStackSetOutputForCreateStackSet {
        if let createStackSetOverride = createStackSetOverride {
            return try await createStackSetOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeactivateType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeactivateTypeInput object being passed to this operation.
     - Returns: The DeactivateTypeOutputForDeactivateType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func deactivateType(
            input: CloudformationModel.DeactivateTypeInput) async throws -> CloudformationModel.DeactivateTypeOutputForDeactivateType {
        if let deactivateTypeOverride = deactivateTypeOverride {
            return try await deactivateTypeOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteChangeSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteChangeSetInput object being passed to this operation.
     - Returns: The DeleteChangeSetOutputForDeleteChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidChangeSetStatus.
     */
    public func deleteChangeSet(
            input: CloudformationModel.DeleteChangeSetInput) async throws -> CloudformationModel.DeleteChangeSetOutputForDeleteChangeSet {
        if let deleteChangeSetOverride = deleteChangeSetOverride {
            return try await deleteChangeSetOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteStack operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteStackInput object being passed to this operation.
     - Throws: tokenAlreadyExists.
     */
    public func deleteStack(
            input: CloudformationModel.DeleteStackInput) async throws {
        if let deleteStackOverride = deleteStackOverride {
            return try await deleteStackOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteStackInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteStackInstancesInput object being passed to this operation.
     - Returns: The DeleteStackInstancesOutputForDeleteStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationIdAlreadyExists, operationInProgress, stackSetNotFound, staleRequest.
     */
    public func deleteStackInstances(
            input: CloudformationModel.DeleteStackInstancesInput) async throws -> CloudformationModel.DeleteStackInstancesOutputForDeleteStackInstances {
        if let deleteStackInstancesOverride = deleteStackInstancesOverride {
            return try await deleteStackInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteStackSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteStackSetInput object being passed to this operation.
     - Returns: The DeleteStackSetOutputForDeleteStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationInProgress, stackSetNotEmpty.
     */
    public func deleteStackSet(
            input: CloudformationModel.DeleteStackSetInput) async throws -> CloudformationModel.DeleteStackSetOutputForDeleteStackSet {
        if let deleteStackSetOverride = deleteStackSetOverride {
            return try await deleteStackSetOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeregisterType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeregisterTypeInput object being passed to this operation.
     - Returns: The DeregisterTypeOutputForDeregisterType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func deregisterType(
            input: CloudformationModel.DeregisterTypeInput) async throws -> CloudformationModel.DeregisterTypeOutputForDeregisterType {
        if let deregisterTypeOverride = deregisterTypeOverride {
            return try await deregisterTypeOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeAccountLimits operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAccountLimitsInput object being passed to this operation.
     - Returns: The DescribeAccountLimitsOutputForDescribeAccountLimits object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAccountLimits(
            input: CloudformationModel.DescribeAccountLimitsInput) async throws -> CloudformationModel.DescribeAccountLimitsOutputForDescribeAccountLimits {
        if let describeAccountLimitsOverride = describeAccountLimitsOverride {
            return try await describeAccountLimitsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeChangeSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeChangeSetInput object being passed to this operation.
     - Returns: The DescribeChangeSetOutputForDescribeChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound.
     */
    public func describeChangeSet(
            input: CloudformationModel.DescribeChangeSetInput) async throws -> CloudformationModel.DescribeChangeSetOutputForDescribeChangeSet {
        if let describeChangeSetOverride = describeChangeSetOverride {
            return try await describeChangeSetOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeChangeSetHooks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeChangeSetHooksInput object being passed to this operation.
     - Returns: The DescribeChangeSetHooksOutputForDescribeChangeSetHooks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound.
     */
    public func describeChangeSetHooks(
            input: CloudformationModel.DescribeChangeSetHooksInput) async throws -> CloudformationModel.DescribeChangeSetHooksOutputForDescribeChangeSetHooks {
        if let describeChangeSetHooksOverride = describeChangeSetHooksOverride {
            return try await describeChangeSetHooksOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribePublisher operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribePublisherInput object being passed to this operation.
     - Returns: The DescribePublisherOutputForDescribePublisher object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func describePublisher(
            input: CloudformationModel.DescribePublisherInput) async throws -> CloudformationModel.DescribePublisherOutputForDescribePublisher {
        if let describePublisherOverride = describePublisherOverride {
            return try await describePublisherOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeStackDriftDetectionStatus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackDriftDetectionStatusInput object being passed to this operation.
     - Returns: The DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStackDriftDetectionStatus(
            input: CloudformationModel.DescribeStackDriftDetectionStatusInput) async throws -> CloudformationModel.DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus {
        if let describeStackDriftDetectionStatusOverride = describeStackDriftDetectionStatusOverride {
            return try await describeStackDriftDetectionStatusOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeStackEvents operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackEventsInput object being passed to this operation.
     - Returns: The DescribeStackEventsOutputForDescribeStackEvents object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStackEvents(
            input: CloudformationModel.DescribeStackEventsInput) async throws -> CloudformationModel.DescribeStackEventsOutputForDescribeStackEvents {
        if let describeStackEventsOverride = describeStackEventsOverride {
            return try await describeStackEventsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeStackInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackInstanceInput object being passed to this operation.
     - Returns: The DescribeStackInstanceOutputForDescribeStackInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackInstanceNotFound, stackSetNotFound.
     */
    public func describeStackInstance(
            input: CloudformationModel.DescribeStackInstanceInput) async throws -> CloudformationModel.DescribeStackInstanceOutputForDescribeStackInstance {
        if let describeStackInstanceOverride = describeStackInstanceOverride {
            return try await describeStackInstanceOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeStackResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackResourceInput object being passed to this operation.
     - Returns: The DescribeStackResourceOutputForDescribeStackResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStackResource(
            input: CloudformationModel.DescribeStackResourceInput) async throws -> CloudformationModel.DescribeStackResourceOutputForDescribeStackResource {
        if let describeStackResourceOverride = describeStackResourceOverride {
            return try await describeStackResourceOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeStackResourceDrifts operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackResourceDriftsInput object being passed to this operation.
     - Returns: The DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStackResourceDrifts(
            input: CloudformationModel.DescribeStackResourceDriftsInput) async throws -> CloudformationModel.DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts {
        if let describeStackResourceDriftsOverride = describeStackResourceDriftsOverride {
            return try await describeStackResourceDriftsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeStackResources operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackResourcesInput object being passed to this operation.
     - Returns: The DescribeStackResourcesOutputForDescribeStackResources object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStackResources(
            input: CloudformationModel.DescribeStackResourcesInput) async throws -> CloudformationModel.DescribeStackResourcesOutputForDescribeStackResources {
        if let describeStackResourcesOverride = describeStackResourcesOverride {
            return try await describeStackResourcesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeStackSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackSetInput object being passed to this operation.
     - Returns: The DescribeStackSetOutputForDescribeStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    public func describeStackSet(
            input: CloudformationModel.DescribeStackSetInput) async throws -> CloudformationModel.DescribeStackSetOutputForDescribeStackSet {
        if let describeStackSetOverride = describeStackSetOverride {
            return try await describeStackSetOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeStackSetOperation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackSetOperationInput object being passed to this operation.
     - Returns: The DescribeStackSetOperationOutputForDescribeStackSetOperation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotFound, stackSetNotFound.
     */
    public func describeStackSetOperation(
            input: CloudformationModel.DescribeStackSetOperationInput) async throws -> CloudformationModel.DescribeStackSetOperationOutputForDescribeStackSetOperation {
        if let describeStackSetOperationOverride = describeStackSetOperationOverride {
            return try await describeStackSetOperationOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeStacks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStacksInput object being passed to this operation.
     - Returns: The DescribeStacksOutputForDescribeStacks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStacks(
            input: CloudformationModel.DescribeStacksInput) async throws -> CloudformationModel.DescribeStacksOutputForDescribeStacks {
        if let describeStacksOverride = describeStacksOverride {
            return try await describeStacksOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTypeInput object being passed to this operation.
     - Returns: The DescribeTypeOutputForDescribeType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func describeType(
            input: CloudformationModel.DescribeTypeInput) async throws -> CloudformationModel.DescribeTypeOutputForDescribeType {
        if let describeTypeOverride = describeTypeOverride {
            return try await describeTypeOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTypeRegistration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTypeRegistrationInput object being passed to this operation.
     - Returns: The DescribeTypeRegistrationOutputForDescribeTypeRegistration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func describeTypeRegistration(
            input: CloudformationModel.DescribeTypeRegistrationInput) async throws -> CloudformationModel.DescribeTypeRegistrationOutputForDescribeTypeRegistration {
        if let describeTypeRegistrationOverride = describeTypeRegistrationOverride {
            return try await describeTypeRegistrationOverride(input)
        }

        throw error
    }

    /**
     Invokes the DetectStackDrift operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DetectStackDriftInput object being passed to this operation.
     - Returns: The DetectStackDriftOutputForDetectStackDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func detectStackDrift(
            input: CloudformationModel.DetectStackDriftInput) async throws -> CloudformationModel.DetectStackDriftOutputForDetectStackDrift {
        if let detectStackDriftOverride = detectStackDriftOverride {
            return try await detectStackDriftOverride(input)
        }

        throw error
    }

    /**
     Invokes the DetectStackResourceDrift operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DetectStackResourceDriftInput object being passed to this operation.
     - Returns: The DetectStackResourceDriftOutputForDetectStackResourceDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func detectStackResourceDrift(
            input: CloudformationModel.DetectStackResourceDriftInput) async throws -> CloudformationModel.DetectStackResourceDriftOutputForDetectStackResourceDrift {
        if let detectStackResourceDriftOverride = detectStackResourceDriftOverride {
            return try await detectStackResourceDriftOverride(input)
        }

        throw error
    }

    /**
     Invokes the DetectStackSetDrift operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DetectStackSetDriftInput object being passed to this operation.
     - Returns: The DetectStackSetDriftOutputForDetectStackSetDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationInProgress, stackSetNotFound.
     */
    public func detectStackSetDrift(
            input: CloudformationModel.DetectStackSetDriftInput) async throws -> CloudformationModel.DetectStackSetDriftOutputForDetectStackSetDrift {
        if let detectStackSetDriftOverride = detectStackSetDriftOverride {
            return try await detectStackSetDriftOverride(input)
        }

        throw error
    }

    /**
     Invokes the EstimateTemplateCost operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EstimateTemplateCostInput object being passed to this operation.
     - Returns: The EstimateTemplateCostOutputForEstimateTemplateCost object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func estimateTemplateCost(
            input: CloudformationModel.EstimateTemplateCostInput) async throws -> CloudformationModel.EstimateTemplateCostOutputForEstimateTemplateCost {
        if let estimateTemplateCostOverride = estimateTemplateCostOverride {
            return try await estimateTemplateCostOverride(input)
        }

        throw error
    }

    /**
     Invokes the ExecuteChangeSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExecuteChangeSetInput object being passed to this operation.
     - Returns: The ExecuteChangeSetOutputForExecuteChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound, insufficientCapabilities, invalidChangeSetStatus, tokenAlreadyExists.
     */
    public func executeChangeSet(
            input: CloudformationModel.ExecuteChangeSetInput) async throws -> CloudformationModel.ExecuteChangeSetOutputForExecuteChangeSet {
        if let executeChangeSetOverride = executeChangeSetOverride {
            return try await executeChangeSetOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetStackPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetStackPolicyInput object being passed to this operation.
     - Returns: The GetStackPolicyOutputForGetStackPolicy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getStackPolicy(
            input: CloudformationModel.GetStackPolicyInput) async throws -> CloudformationModel.GetStackPolicyOutputForGetStackPolicy {
        if let getStackPolicyOverride = getStackPolicyOverride {
            return try await getStackPolicyOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetTemplate operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTemplateInput object being passed to this operation.
     - Returns: The GetTemplateOutputForGetTemplate object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound.
     */
    public func getTemplate(
            input: CloudformationModel.GetTemplateInput) async throws -> CloudformationModel.GetTemplateOutputForGetTemplate {
        if let getTemplateOverride = getTemplateOverride {
            return try await getTemplateOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetTemplateSummary operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTemplateSummaryInput object being passed to this operation.
     - Returns: The GetTemplateSummaryOutputForGetTemplateSummary object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    public func getTemplateSummary(
            input: CloudformationModel.GetTemplateSummaryInput) async throws -> CloudformationModel.GetTemplateSummaryOutputForGetTemplateSummary {
        if let getTemplateSummaryOverride = getTemplateSummaryOverride {
            return try await getTemplateSummaryOverride(input)
        }

        throw error
    }

    /**
     Invokes the ImportStacksToStackSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ImportStacksToStackSetInput object being passed to this operation.
     - Returns: The ImportStacksToStackSetOutputForImportStacksToStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, limitExceeded, operationIdAlreadyExists, operationInProgress, stackNotFound, stackSetNotFound, staleRequest.
     */
    public func importStacksToStackSet(
            input: CloudformationModel.ImportStacksToStackSetInput) async throws -> CloudformationModel.ImportStacksToStackSetOutputForImportStacksToStackSet {
        if let importStacksToStackSetOverride = importStacksToStackSetOverride {
            return try await importStacksToStackSetOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListChangeSets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListChangeSetsInput object being passed to this operation.
     - Returns: The ListChangeSetsOutputForListChangeSets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listChangeSets(
            input: CloudformationModel.ListChangeSetsInput) async throws -> CloudformationModel.ListChangeSetsOutputForListChangeSets {
        if let listChangeSetsOverride = listChangeSetsOverride {
            return try await listChangeSetsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListExports operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListExportsInput object being passed to this operation.
     - Returns: The ListExportsOutputForListExports object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listExports(
            input: CloudformationModel.ListExportsInput) async throws -> CloudformationModel.ListExportsOutputForListExports {
        if let listExportsOverride = listExportsOverride {
            return try await listExportsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListImports operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListImportsInput object being passed to this operation.
     - Returns: The ListImportsOutputForListImports object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listImports(
            input: CloudformationModel.ListImportsInput) async throws -> CloudformationModel.ListImportsOutputForListImports {
        if let listImportsOverride = listImportsOverride {
            return try await listImportsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListStackInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStackInstancesInput object being passed to this operation.
     - Returns: The ListStackInstancesOutputForListStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    public func listStackInstances(
            input: CloudformationModel.ListStackInstancesInput) async throws -> CloudformationModel.ListStackInstancesOutputForListStackInstances {
        if let listStackInstancesOverride = listStackInstancesOverride {
            return try await listStackInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListStackResources operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStackResourcesInput object being passed to this operation.
     - Returns: The ListStackResourcesOutputForListStackResources object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listStackResources(
            input: CloudformationModel.ListStackResourcesInput) async throws -> CloudformationModel.ListStackResourcesOutputForListStackResources {
        if let listStackResourcesOverride = listStackResourcesOverride {
            return try await listStackResourcesOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListStackSetOperationResults operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStackSetOperationResultsInput object being passed to this operation.
     - Returns: The ListStackSetOperationResultsOutputForListStackSetOperationResults object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotFound, stackSetNotFound.
     */
    public func listStackSetOperationResults(
            input: CloudformationModel.ListStackSetOperationResultsInput) async throws -> CloudformationModel.ListStackSetOperationResultsOutputForListStackSetOperationResults {
        if let listStackSetOperationResultsOverride = listStackSetOperationResultsOverride {
            return try await listStackSetOperationResultsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListStackSetOperations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStackSetOperationsInput object being passed to this operation.
     - Returns: The ListStackSetOperationsOutputForListStackSetOperations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    public func listStackSetOperations(
            input: CloudformationModel.ListStackSetOperationsInput) async throws -> CloudformationModel.ListStackSetOperationsOutputForListStackSetOperations {
        if let listStackSetOperationsOverride = listStackSetOperationsOverride {
            return try await listStackSetOperationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListStackSets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStackSetsInput object being passed to this operation.
     - Returns: The ListStackSetsOutputForListStackSets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listStackSets(
            input: CloudformationModel.ListStackSetsInput) async throws -> CloudformationModel.ListStackSetsOutputForListStackSets {
        if let listStackSetsOverride = listStackSetsOverride {
            return try await listStackSetsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListStacks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStacksInput object being passed to this operation.
     - Returns: The ListStacksOutputForListStacks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listStacks(
            input: CloudformationModel.ListStacksInput) async throws -> CloudformationModel.ListStacksOutputForListStacks {
        if let listStacksOverride = listStacksOverride {
            return try await listStacksOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListTypeRegistrations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTypeRegistrationsInput object being passed to this operation.
     - Returns: The ListTypeRegistrationsOutputForListTypeRegistrations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func listTypeRegistrations(
            input: CloudformationModel.ListTypeRegistrationsInput) async throws -> CloudformationModel.ListTypeRegistrationsOutputForListTypeRegistrations {
        if let listTypeRegistrationsOverride = listTypeRegistrationsOverride {
            return try await listTypeRegistrationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListTypeVersions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTypeVersionsInput object being passed to this operation.
     - Returns: The ListTypeVersionsOutputForListTypeVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func listTypeVersions(
            input: CloudformationModel.ListTypeVersionsInput) async throws -> CloudformationModel.ListTypeVersionsOutputForListTypeVersions {
        if let listTypeVersionsOverride = listTypeVersionsOverride {
            return try await listTypeVersionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListTypes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTypesInput object being passed to this operation.
     - Returns: The ListTypesOutputForListTypes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func listTypes(
            input: CloudformationModel.ListTypesInput) async throws -> CloudformationModel.ListTypesOutputForListTypes {
        if let listTypesOverride = listTypesOverride {
            return try await listTypesOverride(input)
        }

        throw error
    }

    /**
     Invokes the PublishType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PublishTypeInput object being passed to this operation.
     - Returns: The PublishTypeOutputForPublishType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func publishType(
            input: CloudformationModel.PublishTypeInput) async throws -> CloudformationModel.PublishTypeOutputForPublishType {
        if let publishTypeOverride = publishTypeOverride {
            return try await publishTypeOverride(input)
        }

        throw error
    }

    /**
     Invokes the RecordHandlerProgress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RecordHandlerProgressInput object being passed to this operation.
     - Returns: The RecordHandlerProgressOutputForRecordHandlerProgress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidStateTransition, operationStatusCheckFailed.
     */
    public func recordHandlerProgress(
            input: CloudformationModel.RecordHandlerProgressInput) async throws -> CloudformationModel.RecordHandlerProgressOutputForRecordHandlerProgress {
        if let recordHandlerProgressOverride = recordHandlerProgressOverride {
            return try await recordHandlerProgressOverride(input)
        }

        throw error
    }

    /**
     Invokes the RegisterPublisher operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterPublisherInput object being passed to this operation.
     - Returns: The RegisterPublisherOutputForRegisterPublisher object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func registerPublisher(
            input: CloudformationModel.RegisterPublisherInput) async throws -> CloudformationModel.RegisterPublisherOutputForRegisterPublisher {
        if let registerPublisherOverride = registerPublisherOverride {
            return try await registerPublisherOverride(input)
        }

        throw error
    }

    /**
     Invokes the RegisterType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterTypeInput object being passed to this operation.
     - Returns: The RegisterTypeOutputForRegisterType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func registerType(
            input: CloudformationModel.RegisterTypeInput) async throws -> CloudformationModel.RegisterTypeOutputForRegisterType {
        if let registerTypeOverride = registerTypeOverride {
            return try await registerTypeOverride(input)
        }

        throw error
    }

    /**
     Invokes the RollbackStack operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RollbackStackInput object being passed to this operation.
     - Returns: The RollbackStackOutputForRollbackStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: tokenAlreadyExists.
     */
    public func rollbackStack(
            input: CloudformationModel.RollbackStackInput) async throws -> CloudformationModel.RollbackStackOutputForRollbackStack {
        if let rollbackStackOverride = rollbackStackOverride {
            return try await rollbackStackOverride(input)
        }

        throw error
    }

    /**
     Invokes the SetStackPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetStackPolicyInput object being passed to this operation.
     */
    public func setStackPolicy(
            input: CloudformationModel.SetStackPolicyInput) async throws {
        if let setStackPolicyOverride = setStackPolicyOverride {
            return try await setStackPolicyOverride(input)
        }

        throw error
    }

    /**
     Invokes the SetTypeConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetTypeConfigurationInput object being passed to this operation.
     - Returns: The SetTypeConfigurationOutputForSetTypeConfiguration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func setTypeConfiguration(
            input: CloudformationModel.SetTypeConfigurationInput) async throws -> CloudformationModel.SetTypeConfigurationOutputForSetTypeConfiguration {
        if let setTypeConfigurationOverride = setTypeConfigurationOverride {
            return try await setTypeConfigurationOverride(input)
        }

        throw error
    }

    /**
     Invokes the SetTypeDefaultVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetTypeDefaultVersionInput object being passed to this operation.
     - Returns: The SetTypeDefaultVersionOutputForSetTypeDefaultVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func setTypeDefaultVersion(
            input: CloudformationModel.SetTypeDefaultVersionInput) async throws -> CloudformationModel.SetTypeDefaultVersionOutputForSetTypeDefaultVersion {
        if let setTypeDefaultVersionOverride = setTypeDefaultVersionOverride {
            return try await setTypeDefaultVersionOverride(input)
        }

        throw error
    }

    /**
     Invokes the SignalResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SignalResourceInput object being passed to this operation.
     */
    public func signalResource(
            input: CloudformationModel.SignalResourceInput) async throws {
        if let signalResourceOverride = signalResourceOverride {
            return try await signalResourceOverride(input)
        }

        throw error
    }

    /**
     Invokes the StopStackSetOperation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopStackSetOperationInput object being passed to this operation.
     - Returns: The StopStackSetOperationOutputForStopStackSetOperation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationNotFound, stackSetNotFound.
     */
    public func stopStackSetOperation(
            input: CloudformationModel.StopStackSetOperationInput) async throws -> CloudformationModel.StopStackSetOperationOutputForStopStackSetOperation {
        if let stopStackSetOperationOverride = stopStackSetOperationOverride {
            return try await stopStackSetOperationOverride(input)
        }

        throw error
    }

    /**
     Invokes the TestType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TestTypeInput object being passed to this operation.
     - Returns: The TestTypeOutputForTestType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func testType(
            input: CloudformationModel.TestTypeInput) async throws -> CloudformationModel.TestTypeOutputForTestType {
        if let testTypeOverride = testTypeOverride {
            return try await testTypeOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateStack operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateStackInput object being passed to this operation.
     - Returns: The UpdateStackOutputForUpdateStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: insufficientCapabilities, tokenAlreadyExists.
     */
    public func updateStack(
            input: CloudformationModel.UpdateStackInput) async throws -> CloudformationModel.UpdateStackOutputForUpdateStack {
        if let updateStackOverride = updateStackOverride {
            return try await updateStackOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateStackInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateStackInstancesInput object being passed to this operation.
     - Returns: The UpdateStackInstancesOutputForUpdateStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationIdAlreadyExists, operationInProgress, stackInstanceNotFound, stackSetNotFound, staleRequest.
     */
    public func updateStackInstances(
            input: CloudformationModel.UpdateStackInstancesInput) async throws -> CloudformationModel.UpdateStackInstancesOutputForUpdateStackInstances {
        if let updateStackInstancesOverride = updateStackInstancesOverride {
            return try await updateStackInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateStackSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateStackSetInput object being passed to this operation.
     - Returns: The UpdateStackSetOutputForUpdateStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationIdAlreadyExists, operationInProgress, stackInstanceNotFound, stackSetNotFound, staleRequest.
     */
    public func updateStackSet(
            input: CloudformationModel.UpdateStackSetInput) async throws -> CloudformationModel.UpdateStackSetOutputForUpdateStackSet {
        if let updateStackSetOverride = updateStackSetOverride {
            return try await updateStackSetOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateTerminationProtection operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateTerminationProtectionInput object being passed to this operation.
     - Returns: The UpdateTerminationProtectionOutputForUpdateTerminationProtection object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func updateTerminationProtection(
            input: CloudformationModel.UpdateTerminationProtectionInput) async throws -> CloudformationModel.UpdateTerminationProtectionOutputForUpdateTerminationProtection {
        if let updateTerminationProtectionOverride = updateTerminationProtectionOverride {
            return try await updateTerminationProtectionOverride(input)
        }

        throw error
    }

    /**
     Invokes the ValidateTemplate operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ValidateTemplateInput object being passed to this operation.
     - Returns: The ValidateTemplateOutputForValidateTemplate object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func validateTemplate(
            input: CloudformationModel.ValidateTemplateInput) async throws -> CloudformationModel.ValidateTemplateOutputForValidateTemplate {
        if let validateTemplateOverride = validateTemplateOverride {
            return try await validateTemplateOverride(input)
        }

        throw error
    }
#endif
}
