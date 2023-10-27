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
// CloudformationClientProtocolV2.swift
// CloudformationClient
//

import Foundation
import CloudformationModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the Cloudformation service.
 */
public protocol CloudformationClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    typealias ActivateOrganizationsAccessFunctionType = (
            _ input: CloudformationModel.ActivateOrganizationsAccessInput) async throws -> CloudformationModel.ActivateOrganizationsAccessOutputForActivateOrganizationsAccess
    typealias ActivateTypeFunctionType = (
            _ input: CloudformationModel.ActivateTypeInput) async throws -> CloudformationModel.ActivateTypeOutputForActivateType
    typealias BatchDescribeTypeConfigurationsFunctionType = (
            _ input: CloudformationModel.BatchDescribeTypeConfigurationsInput) async throws -> CloudformationModel.BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations
    typealias CancelUpdateStackFunctionType = (
            _ input: CloudformationModel.CancelUpdateStackInput) async throws -> ()
    typealias ContinueUpdateRollbackFunctionType = (
            _ input: CloudformationModel.ContinueUpdateRollbackInput) async throws -> CloudformationModel.ContinueUpdateRollbackOutputForContinueUpdateRollback
    typealias CreateChangeSetFunctionType = (
            _ input: CloudformationModel.CreateChangeSetInput) async throws -> CloudformationModel.CreateChangeSetOutputForCreateChangeSet
    typealias CreateStackFunctionType = (
            _ input: CloudformationModel.CreateStackInput) async throws -> CloudformationModel.CreateStackOutputForCreateStack
    typealias CreateStackInstancesFunctionType = (
            _ input: CloudformationModel.CreateStackInstancesInput) async throws -> CloudformationModel.CreateStackInstancesOutputForCreateStackInstances
    typealias CreateStackSetFunctionType = (
            _ input: CloudformationModel.CreateStackSetInput) async throws -> CloudformationModel.CreateStackSetOutputForCreateStackSet
    typealias DeactivateOrganizationsAccessFunctionType = (
            _ input: CloudformationModel.DeactivateOrganizationsAccessInput) async throws -> CloudformationModel.DeactivateOrganizationsAccessOutputForDeactivateOrganizationsAccess
    typealias DeactivateTypeFunctionType = (
            _ input: CloudformationModel.DeactivateTypeInput) async throws -> CloudformationModel.DeactivateTypeOutputForDeactivateType
    typealias DeleteChangeSetFunctionType = (
            _ input: CloudformationModel.DeleteChangeSetInput) async throws -> CloudformationModel.DeleteChangeSetOutputForDeleteChangeSet
    typealias DeleteStackFunctionType = (
            _ input: CloudformationModel.DeleteStackInput) async throws -> ()
    typealias DeleteStackInstancesFunctionType = (
            _ input: CloudformationModel.DeleteStackInstancesInput) async throws -> CloudformationModel.DeleteStackInstancesOutputForDeleteStackInstances
    typealias DeleteStackSetFunctionType = (
            _ input: CloudformationModel.DeleteStackSetInput) async throws -> CloudformationModel.DeleteStackSetOutputForDeleteStackSet
    typealias DeregisterTypeFunctionType = (
            _ input: CloudformationModel.DeregisterTypeInput) async throws -> CloudformationModel.DeregisterTypeOutputForDeregisterType
    typealias DescribeAccountLimitsFunctionType = (
            _ input: CloudformationModel.DescribeAccountLimitsInput) async throws -> CloudformationModel.DescribeAccountLimitsOutputForDescribeAccountLimits
    typealias DescribeChangeSetFunctionType = (
            _ input: CloudformationModel.DescribeChangeSetInput) async throws -> CloudformationModel.DescribeChangeSetOutputForDescribeChangeSet
    typealias DescribeChangeSetHooksFunctionType = (
            _ input: CloudformationModel.DescribeChangeSetHooksInput) async throws -> CloudformationModel.DescribeChangeSetHooksOutputForDescribeChangeSetHooks
    typealias DescribeOrganizationsAccessFunctionType = (
            _ input: CloudformationModel.DescribeOrganizationsAccessInput) async throws -> CloudformationModel.DescribeOrganizationsAccessOutputForDescribeOrganizationsAccess
    typealias DescribePublisherFunctionType = (
            _ input: CloudformationModel.DescribePublisherInput) async throws -> CloudformationModel.DescribePublisherOutputForDescribePublisher
    typealias DescribeStackDriftDetectionStatusFunctionType = (
            _ input: CloudformationModel.DescribeStackDriftDetectionStatusInput) async throws -> CloudformationModel.DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus
    typealias DescribeStackEventsFunctionType = (
            _ input: CloudformationModel.DescribeStackEventsInput) async throws -> CloudformationModel.DescribeStackEventsOutputForDescribeStackEvents
    typealias DescribeStackInstanceFunctionType = (
            _ input: CloudformationModel.DescribeStackInstanceInput) async throws -> CloudformationModel.DescribeStackInstanceOutputForDescribeStackInstance
    typealias DescribeStackResourceFunctionType = (
            _ input: CloudformationModel.DescribeStackResourceInput) async throws -> CloudformationModel.DescribeStackResourceOutputForDescribeStackResource
    typealias DescribeStackResourceDriftsFunctionType = (
            _ input: CloudformationModel.DescribeStackResourceDriftsInput) async throws -> CloudformationModel.DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts
    typealias DescribeStackResourcesFunctionType = (
            _ input: CloudformationModel.DescribeStackResourcesInput) async throws -> CloudformationModel.DescribeStackResourcesOutputForDescribeStackResources
    typealias DescribeStackSetFunctionType = (
            _ input: CloudformationModel.DescribeStackSetInput) async throws -> CloudformationModel.DescribeStackSetOutputForDescribeStackSet
    typealias DescribeStackSetOperationFunctionType = (
            _ input: CloudformationModel.DescribeStackSetOperationInput) async throws -> CloudformationModel.DescribeStackSetOperationOutputForDescribeStackSetOperation
    typealias DescribeStacksFunctionType = (
            _ input: CloudformationModel.DescribeStacksInput) async throws -> CloudformationModel.DescribeStacksOutputForDescribeStacks
    typealias DescribeTypeFunctionType = (
            _ input: CloudformationModel.DescribeTypeInput) async throws -> CloudformationModel.DescribeTypeOutputForDescribeType
    typealias DescribeTypeRegistrationFunctionType = (
            _ input: CloudformationModel.DescribeTypeRegistrationInput) async throws -> CloudformationModel.DescribeTypeRegistrationOutputForDescribeTypeRegistration
    typealias DetectStackDriftFunctionType = (
            _ input: CloudformationModel.DetectStackDriftInput) async throws -> CloudformationModel.DetectStackDriftOutputForDetectStackDrift
    typealias DetectStackResourceDriftFunctionType = (
            _ input: CloudformationModel.DetectStackResourceDriftInput) async throws -> CloudformationModel.DetectStackResourceDriftOutputForDetectStackResourceDrift
    typealias DetectStackSetDriftFunctionType = (
            _ input: CloudformationModel.DetectStackSetDriftInput) async throws -> CloudformationModel.DetectStackSetDriftOutputForDetectStackSetDrift
    typealias EstimateTemplateCostFunctionType = (
            _ input: CloudformationModel.EstimateTemplateCostInput) async throws -> CloudformationModel.EstimateTemplateCostOutputForEstimateTemplateCost
    typealias ExecuteChangeSetFunctionType = (
            _ input: CloudformationModel.ExecuteChangeSetInput) async throws -> CloudformationModel.ExecuteChangeSetOutputForExecuteChangeSet
    typealias GetStackPolicyFunctionType = (
            _ input: CloudformationModel.GetStackPolicyInput) async throws -> CloudformationModel.GetStackPolicyOutputForGetStackPolicy
    typealias GetTemplateFunctionType = (
            _ input: CloudformationModel.GetTemplateInput) async throws -> CloudformationModel.GetTemplateOutputForGetTemplate
    typealias GetTemplateSummaryFunctionType = (
            _ input: CloudformationModel.GetTemplateSummaryInput) async throws -> CloudformationModel.GetTemplateSummaryOutputForGetTemplateSummary
    typealias ImportStacksToStackSetFunctionType = (
            _ input: CloudformationModel.ImportStacksToStackSetInput) async throws -> CloudformationModel.ImportStacksToStackSetOutputForImportStacksToStackSet
    typealias ListChangeSetsFunctionType = (
            _ input: CloudformationModel.ListChangeSetsInput) async throws -> CloudformationModel.ListChangeSetsOutputForListChangeSets
    typealias ListExportsFunctionType = (
            _ input: CloudformationModel.ListExportsInput) async throws -> CloudformationModel.ListExportsOutputForListExports
    typealias ListImportsFunctionType = (
            _ input: CloudformationModel.ListImportsInput) async throws -> CloudformationModel.ListImportsOutputForListImports
    typealias ListStackInstanceResourceDriftsFunctionType = (
            _ input: CloudformationModel.ListStackInstanceResourceDriftsInput) async throws -> CloudformationModel.ListStackInstanceResourceDriftsOutputForListStackInstanceResourceDrifts
    typealias ListStackInstancesFunctionType = (
            _ input: CloudformationModel.ListStackInstancesInput) async throws -> CloudformationModel.ListStackInstancesOutputForListStackInstances
    typealias ListStackResourcesFunctionType = (
            _ input: CloudformationModel.ListStackResourcesInput) async throws -> CloudformationModel.ListStackResourcesOutputForListStackResources
    typealias ListStackSetOperationResultsFunctionType = (
            _ input: CloudformationModel.ListStackSetOperationResultsInput) async throws -> CloudformationModel.ListStackSetOperationResultsOutputForListStackSetOperationResults
    typealias ListStackSetOperationsFunctionType = (
            _ input: CloudformationModel.ListStackSetOperationsInput) async throws -> CloudformationModel.ListStackSetOperationsOutputForListStackSetOperations
    typealias ListStackSetsFunctionType = (
            _ input: CloudformationModel.ListStackSetsInput) async throws -> CloudformationModel.ListStackSetsOutputForListStackSets
    typealias ListStacksFunctionType = (
            _ input: CloudformationModel.ListStacksInput) async throws -> CloudformationModel.ListStacksOutputForListStacks
    typealias ListTypeRegistrationsFunctionType = (
            _ input: CloudformationModel.ListTypeRegistrationsInput) async throws -> CloudformationModel.ListTypeRegistrationsOutputForListTypeRegistrations
    typealias ListTypeVersionsFunctionType = (
            _ input: CloudformationModel.ListTypeVersionsInput) async throws -> CloudformationModel.ListTypeVersionsOutputForListTypeVersions
    typealias ListTypesFunctionType = (
            _ input: CloudformationModel.ListTypesInput) async throws -> CloudformationModel.ListTypesOutputForListTypes
    typealias PublishTypeFunctionType = (
            _ input: CloudformationModel.PublishTypeInput) async throws -> CloudformationModel.PublishTypeOutputForPublishType
    typealias RecordHandlerProgressFunctionType = (
            _ input: CloudformationModel.RecordHandlerProgressInput) async throws -> CloudformationModel.RecordHandlerProgressOutputForRecordHandlerProgress
    typealias RegisterPublisherFunctionType = (
            _ input: CloudformationModel.RegisterPublisherInput) async throws -> CloudformationModel.RegisterPublisherOutputForRegisterPublisher
    typealias RegisterTypeFunctionType = (
            _ input: CloudformationModel.RegisterTypeInput) async throws -> CloudformationModel.RegisterTypeOutputForRegisterType
    typealias RollbackStackFunctionType = (
            _ input: CloudformationModel.RollbackStackInput) async throws -> CloudformationModel.RollbackStackOutputForRollbackStack
    typealias SetStackPolicyFunctionType = (
            _ input: CloudformationModel.SetStackPolicyInput) async throws -> ()
    typealias SetTypeConfigurationFunctionType = (
            _ input: CloudformationModel.SetTypeConfigurationInput) async throws -> CloudformationModel.SetTypeConfigurationOutputForSetTypeConfiguration
    typealias SetTypeDefaultVersionFunctionType = (
            _ input: CloudformationModel.SetTypeDefaultVersionInput) async throws -> CloudformationModel.SetTypeDefaultVersionOutputForSetTypeDefaultVersion
    typealias SignalResourceFunctionType = (
            _ input: CloudformationModel.SignalResourceInput) async throws -> ()
    typealias StopStackSetOperationFunctionType = (
            _ input: CloudformationModel.StopStackSetOperationInput) async throws -> CloudformationModel.StopStackSetOperationOutputForStopStackSetOperation
    typealias TestTypeFunctionType = (
            _ input: CloudformationModel.TestTypeInput) async throws -> CloudformationModel.TestTypeOutputForTestType
    typealias UpdateStackFunctionType = (
            _ input: CloudformationModel.UpdateStackInput) async throws -> CloudformationModel.UpdateStackOutputForUpdateStack
    typealias UpdateStackInstancesFunctionType = (
            _ input: CloudformationModel.UpdateStackInstancesInput) async throws -> CloudformationModel.UpdateStackInstancesOutputForUpdateStackInstances
    typealias UpdateStackSetFunctionType = (
            _ input: CloudformationModel.UpdateStackSetInput) async throws -> CloudformationModel.UpdateStackSetOutputForUpdateStackSet
    typealias UpdateTerminationProtectionFunctionType = (
            _ input: CloudformationModel.UpdateTerminationProtectionInput) async throws -> CloudformationModel.UpdateTerminationProtectionOutputForUpdateTerminationProtection
    typealias ValidateTemplateFunctionType = (
            _ input: CloudformationModel.ValidateTemplateInput) async throws -> CloudformationModel.ValidateTemplateOutputForValidateTemplate

    /**
     Invokes the ActivateOrganizationsAccess operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ActivateOrganizationsAccessInput object being passed to this operation.
     - Returns: The ActivateOrganizationsAccessOutputForActivateOrganizationsAccess object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationNotFound.
     */
    func activateOrganizationsAccess(
            input: CloudformationModel.ActivateOrganizationsAccessInput) async throws -> CloudformationModel.ActivateOrganizationsAccessOutputForActivateOrganizationsAccess

    /**
     Invokes the ActivateType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ActivateTypeInput object being passed to this operation.
     - Returns: The ActivateTypeOutputForActivateType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func activateType(
            input: CloudformationModel.ActivateTypeInput) async throws -> CloudformationModel.ActivateTypeOutputForActivateType

    /**
     Invokes the BatchDescribeTypeConfigurations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BatchDescribeTypeConfigurationsInput object being passed to this operation.
     - Returns: The BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeConfigurationNotFound.
     */
    func batchDescribeTypeConfigurations(
            input: CloudformationModel.BatchDescribeTypeConfigurationsInput) async throws -> CloudformationModel.BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations

    /**
     Invokes the CancelUpdateStack operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelUpdateStackInput object being passed to this operation.
     - Throws: tokenAlreadyExists.
     */
    func cancelUpdateStack(
            input: CloudformationModel.CancelUpdateStackInput) async throws

    /**
     Invokes the ContinueUpdateRollback operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ContinueUpdateRollbackInput object being passed to this operation.
     - Returns: The ContinueUpdateRollbackOutputForContinueUpdateRollback object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: tokenAlreadyExists.
     */
    func continueUpdateRollback(
            input: CloudformationModel.ContinueUpdateRollbackInput) async throws -> CloudformationModel.ContinueUpdateRollbackOutputForContinueUpdateRollback

    /**
     Invokes the CreateChangeSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateChangeSetInput object being passed to this operation.
     - Returns: The CreateChangeSetOutputForCreateChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: alreadyExists, insufficientCapabilities, limitExceeded.
     */
    func createChangeSet(
            input: CloudformationModel.CreateChangeSetInput) async throws -> CloudformationModel.CreateChangeSetOutputForCreateChangeSet

    /**
     Invokes the CreateStack operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateStackInput object being passed to this operation.
     - Returns: The CreateStackOutputForCreateStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: alreadyExists, insufficientCapabilities, limitExceeded, tokenAlreadyExists.
     */
    func createStack(
            input: CloudformationModel.CreateStackInput) async throws -> CloudformationModel.CreateStackOutputForCreateStack

    /**
     Invokes the CreateStackInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateStackInstancesInput object being passed to this operation.
     - Returns: The CreateStackInstancesOutputForCreateStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, limitExceeded, operationIdAlreadyExists, operationInProgress, stackSetNotFound, staleRequest.
     */
    func createStackInstances(
            input: CloudformationModel.CreateStackInstancesInput) async throws -> CloudformationModel.CreateStackInstancesOutputForCreateStackInstances

    /**
     Invokes the CreateStackSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateStackSetInput object being passed to this operation.
     - Returns: The CreateStackSetOutputForCreateStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: createdButModified, limitExceeded, nameAlreadyExists.
     */
    func createStackSet(
            input: CloudformationModel.CreateStackSetInput) async throws -> CloudformationModel.CreateStackSetOutputForCreateStackSet

    /**
     Invokes the DeactivateOrganizationsAccess operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeactivateOrganizationsAccessInput object being passed to this operation.
     - Returns: The DeactivateOrganizationsAccessOutputForDeactivateOrganizationsAccess object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationNotFound.
     */
    func deactivateOrganizationsAccess(
            input: CloudformationModel.DeactivateOrganizationsAccessInput) async throws -> CloudformationModel.DeactivateOrganizationsAccessOutputForDeactivateOrganizationsAccess

    /**
     Invokes the DeactivateType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeactivateTypeInput object being passed to this operation.
     - Returns: The DeactivateTypeOutputForDeactivateType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func deactivateType(
            input: CloudformationModel.DeactivateTypeInput) async throws -> CloudformationModel.DeactivateTypeOutputForDeactivateType

    /**
     Invokes the DeleteChangeSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteChangeSetInput object being passed to this operation.
     - Returns: The DeleteChangeSetOutputForDeleteChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidChangeSetStatus.
     */
    func deleteChangeSet(
            input: CloudformationModel.DeleteChangeSetInput) async throws -> CloudformationModel.DeleteChangeSetOutputForDeleteChangeSet

    /**
     Invokes the DeleteStack operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteStackInput object being passed to this operation.
     - Throws: tokenAlreadyExists.
     */
    func deleteStack(
            input: CloudformationModel.DeleteStackInput) async throws

    /**
     Invokes the DeleteStackInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteStackInstancesInput object being passed to this operation.
     - Returns: The DeleteStackInstancesOutputForDeleteStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationIdAlreadyExists, operationInProgress, stackSetNotFound, staleRequest.
     */
    func deleteStackInstances(
            input: CloudformationModel.DeleteStackInstancesInput) async throws -> CloudformationModel.DeleteStackInstancesOutputForDeleteStackInstances

    /**
     Invokes the DeleteStackSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteStackSetInput object being passed to this operation.
     - Returns: The DeleteStackSetOutputForDeleteStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationInProgress, stackSetNotEmpty.
     */
    func deleteStackSet(
            input: CloudformationModel.DeleteStackSetInput) async throws -> CloudformationModel.DeleteStackSetOutputForDeleteStackSet

    /**
     Invokes the DeregisterType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeregisterTypeInput object being passed to this operation.
     - Returns: The DeregisterTypeOutputForDeregisterType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func deregisterType(
            input: CloudformationModel.DeregisterTypeInput) async throws -> CloudformationModel.DeregisterTypeOutputForDeregisterType

    /**
     Invokes the DescribeAccountLimits operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAccountLimitsInput object being passed to this operation.
     - Returns: The DescribeAccountLimitsOutputForDescribeAccountLimits object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAccountLimits(
            input: CloudformationModel.DescribeAccountLimitsInput) async throws -> CloudformationModel.DescribeAccountLimitsOutputForDescribeAccountLimits

    /**
     Invokes the DescribeChangeSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeChangeSetInput object being passed to this operation.
     - Returns: The DescribeChangeSetOutputForDescribeChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound.
     */
    func describeChangeSet(
            input: CloudformationModel.DescribeChangeSetInput) async throws -> CloudformationModel.DescribeChangeSetOutputForDescribeChangeSet

    /**
     Invokes the DescribeChangeSetHooks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeChangeSetHooksInput object being passed to this operation.
     - Returns: The DescribeChangeSetHooksOutputForDescribeChangeSetHooks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound.
     */
    func describeChangeSetHooks(
            input: CloudformationModel.DescribeChangeSetHooksInput) async throws -> CloudformationModel.DescribeChangeSetHooksOutputForDescribeChangeSetHooks

    /**
     Invokes the DescribeOrganizationsAccess operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeOrganizationsAccessInput object being passed to this operation.
     - Returns: The DescribeOrganizationsAccessOutputForDescribeOrganizationsAccess object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationNotFound.
     */
    func describeOrganizationsAccess(
            input: CloudformationModel.DescribeOrganizationsAccessInput) async throws -> CloudformationModel.DescribeOrganizationsAccessOutputForDescribeOrganizationsAccess

    /**
     Invokes the DescribePublisher operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribePublisherInput object being passed to this operation.
     - Returns: The DescribePublisherOutputForDescribePublisher object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func describePublisher(
            input: CloudformationModel.DescribePublisherInput) async throws -> CloudformationModel.DescribePublisherOutputForDescribePublisher

    /**
     Invokes the DescribeStackDriftDetectionStatus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackDriftDetectionStatusInput object being passed to this operation.
     - Returns: The DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStackDriftDetectionStatus(
            input: CloudformationModel.DescribeStackDriftDetectionStatusInput) async throws -> CloudformationModel.DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus

    /**
     Invokes the DescribeStackEvents operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackEventsInput object being passed to this operation.
     - Returns: The DescribeStackEventsOutputForDescribeStackEvents object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStackEvents(
            input: CloudformationModel.DescribeStackEventsInput) async throws -> CloudformationModel.DescribeStackEventsOutputForDescribeStackEvents

    /**
     Invokes the DescribeStackInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackInstanceInput object being passed to this operation.
     - Returns: The DescribeStackInstanceOutputForDescribeStackInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackInstanceNotFound, stackSetNotFound.
     */
    func describeStackInstance(
            input: CloudformationModel.DescribeStackInstanceInput) async throws -> CloudformationModel.DescribeStackInstanceOutputForDescribeStackInstance

    /**
     Invokes the DescribeStackResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackResourceInput object being passed to this operation.
     - Returns: The DescribeStackResourceOutputForDescribeStackResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStackResource(
            input: CloudformationModel.DescribeStackResourceInput) async throws -> CloudformationModel.DescribeStackResourceOutputForDescribeStackResource

    /**
     Invokes the DescribeStackResourceDrifts operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackResourceDriftsInput object being passed to this operation.
     - Returns: The DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStackResourceDrifts(
            input: CloudformationModel.DescribeStackResourceDriftsInput) async throws -> CloudformationModel.DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts

    /**
     Invokes the DescribeStackResources operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackResourcesInput object being passed to this operation.
     - Returns: The DescribeStackResourcesOutputForDescribeStackResources object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStackResources(
            input: CloudformationModel.DescribeStackResourcesInput) async throws -> CloudformationModel.DescribeStackResourcesOutputForDescribeStackResources

    /**
     Invokes the DescribeStackSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackSetInput object being passed to this operation.
     - Returns: The DescribeStackSetOutputForDescribeStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    func describeStackSet(
            input: CloudformationModel.DescribeStackSetInput) async throws -> CloudformationModel.DescribeStackSetOutputForDescribeStackSet

    /**
     Invokes the DescribeStackSetOperation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackSetOperationInput object being passed to this operation.
     - Returns: The DescribeStackSetOperationOutputForDescribeStackSetOperation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotFound, stackSetNotFound.
     */
    func describeStackSetOperation(
            input: CloudformationModel.DescribeStackSetOperationInput) async throws -> CloudformationModel.DescribeStackSetOperationOutputForDescribeStackSetOperation

    /**
     Invokes the DescribeStacks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStacksInput object being passed to this operation.
     - Returns: The DescribeStacksOutputForDescribeStacks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStacks(
            input: CloudformationModel.DescribeStacksInput) async throws -> CloudformationModel.DescribeStacksOutputForDescribeStacks

    /**
     Invokes the DescribeType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTypeInput object being passed to this operation.
     - Returns: The DescribeTypeOutputForDescribeType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func describeType(
            input: CloudformationModel.DescribeTypeInput) async throws -> CloudformationModel.DescribeTypeOutputForDescribeType

    /**
     Invokes the DescribeTypeRegistration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTypeRegistrationInput object being passed to this operation.
     - Returns: The DescribeTypeRegistrationOutputForDescribeTypeRegistration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func describeTypeRegistration(
            input: CloudformationModel.DescribeTypeRegistrationInput) async throws -> CloudformationModel.DescribeTypeRegistrationOutputForDescribeTypeRegistration

    /**
     Invokes the DetectStackDrift operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DetectStackDriftInput object being passed to this operation.
     - Returns: The DetectStackDriftOutputForDetectStackDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detectStackDrift(
            input: CloudformationModel.DetectStackDriftInput) async throws -> CloudformationModel.DetectStackDriftOutputForDetectStackDrift

    /**
     Invokes the DetectStackResourceDrift operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DetectStackResourceDriftInput object being passed to this operation.
     - Returns: The DetectStackResourceDriftOutputForDetectStackResourceDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detectStackResourceDrift(
            input: CloudformationModel.DetectStackResourceDriftInput) async throws -> CloudformationModel.DetectStackResourceDriftOutputForDetectStackResourceDrift

    /**
     Invokes the DetectStackSetDrift operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DetectStackSetDriftInput object being passed to this operation.
     - Returns: The DetectStackSetDriftOutputForDetectStackSetDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationInProgress, stackSetNotFound.
     */
    func detectStackSetDrift(
            input: CloudformationModel.DetectStackSetDriftInput) async throws -> CloudformationModel.DetectStackSetDriftOutputForDetectStackSetDrift

    /**
     Invokes the EstimateTemplateCost operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EstimateTemplateCostInput object being passed to this operation.
     - Returns: The EstimateTemplateCostOutputForEstimateTemplateCost object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func estimateTemplateCost(
            input: CloudformationModel.EstimateTemplateCostInput) async throws -> CloudformationModel.EstimateTemplateCostOutputForEstimateTemplateCost

    /**
     Invokes the ExecuteChangeSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExecuteChangeSetInput object being passed to this operation.
     - Returns: The ExecuteChangeSetOutputForExecuteChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound, insufficientCapabilities, invalidChangeSetStatus, tokenAlreadyExists.
     */
    func executeChangeSet(
            input: CloudformationModel.ExecuteChangeSetInput) async throws -> CloudformationModel.ExecuteChangeSetOutputForExecuteChangeSet

    /**
     Invokes the GetStackPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetStackPolicyInput object being passed to this operation.
     - Returns: The GetStackPolicyOutputForGetStackPolicy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getStackPolicy(
            input: CloudformationModel.GetStackPolicyInput) async throws -> CloudformationModel.GetStackPolicyOutputForGetStackPolicy

    /**
     Invokes the GetTemplate operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTemplateInput object being passed to this operation.
     - Returns: The GetTemplateOutputForGetTemplate object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound.
     */
    func getTemplate(
            input: CloudformationModel.GetTemplateInput) async throws -> CloudformationModel.GetTemplateOutputForGetTemplate

    /**
     Invokes the GetTemplateSummary operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTemplateSummaryInput object being passed to this operation.
     - Returns: The GetTemplateSummaryOutputForGetTemplateSummary object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    func getTemplateSummary(
            input: CloudformationModel.GetTemplateSummaryInput) async throws -> CloudformationModel.GetTemplateSummaryOutputForGetTemplateSummary

    /**
     Invokes the ImportStacksToStackSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ImportStacksToStackSetInput object being passed to this operation.
     - Returns: The ImportStacksToStackSetOutputForImportStacksToStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, limitExceeded, operationIdAlreadyExists, operationInProgress, stackNotFound, stackSetNotFound, staleRequest.
     */
    func importStacksToStackSet(
            input: CloudformationModel.ImportStacksToStackSetInput) async throws -> CloudformationModel.ImportStacksToStackSetOutputForImportStacksToStackSet

    /**
     Invokes the ListChangeSets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListChangeSetsInput object being passed to this operation.
     - Returns: The ListChangeSetsOutputForListChangeSets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listChangeSets(
            input: CloudformationModel.ListChangeSetsInput) async throws -> CloudformationModel.ListChangeSetsOutputForListChangeSets

    /**
     Invokes the ListExports operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListExportsInput object being passed to this operation.
     - Returns: The ListExportsOutputForListExports object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listExports(
            input: CloudformationModel.ListExportsInput) async throws -> CloudformationModel.ListExportsOutputForListExports

    /**
     Invokes the ListImports operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListImportsInput object being passed to this operation.
     - Returns: The ListImportsOutputForListImports object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listImports(
            input: CloudformationModel.ListImportsInput) async throws -> CloudformationModel.ListImportsOutputForListImports

    /**
     Invokes the ListStackInstanceResourceDrifts operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStackInstanceResourceDriftsInput object being passed to this operation.
     - Returns: The ListStackInstanceResourceDriftsOutputForListStackInstanceResourceDrifts object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotFound, stackInstanceNotFound, stackSetNotFound.
     */
    func listStackInstanceResourceDrifts(
            input: CloudformationModel.ListStackInstanceResourceDriftsInput) async throws -> CloudformationModel.ListStackInstanceResourceDriftsOutputForListStackInstanceResourceDrifts

    /**
     Invokes the ListStackInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStackInstancesInput object being passed to this operation.
     - Returns: The ListStackInstancesOutputForListStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    func listStackInstances(
            input: CloudformationModel.ListStackInstancesInput) async throws -> CloudformationModel.ListStackInstancesOutputForListStackInstances

    /**
     Invokes the ListStackResources operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStackResourcesInput object being passed to this operation.
     - Returns: The ListStackResourcesOutputForListStackResources object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listStackResources(
            input: CloudformationModel.ListStackResourcesInput) async throws -> CloudformationModel.ListStackResourcesOutputForListStackResources

    /**
     Invokes the ListStackSetOperationResults operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStackSetOperationResultsInput object being passed to this operation.
     - Returns: The ListStackSetOperationResultsOutputForListStackSetOperationResults object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotFound, stackSetNotFound.
     */
    func listStackSetOperationResults(
            input: CloudformationModel.ListStackSetOperationResultsInput) async throws -> CloudformationModel.ListStackSetOperationResultsOutputForListStackSetOperationResults

    /**
     Invokes the ListStackSetOperations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStackSetOperationsInput object being passed to this operation.
     - Returns: The ListStackSetOperationsOutputForListStackSetOperations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    func listStackSetOperations(
            input: CloudformationModel.ListStackSetOperationsInput) async throws -> CloudformationModel.ListStackSetOperationsOutputForListStackSetOperations

    /**
     Invokes the ListStackSets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStackSetsInput object being passed to this operation.
     - Returns: The ListStackSetsOutputForListStackSets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listStackSets(
            input: CloudformationModel.ListStackSetsInput) async throws -> CloudformationModel.ListStackSetsOutputForListStackSets

    /**
     Invokes the ListStacks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStacksInput object being passed to this operation.
     - Returns: The ListStacksOutputForListStacks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listStacks(
            input: CloudformationModel.ListStacksInput) async throws -> CloudformationModel.ListStacksOutputForListStacks

    /**
     Invokes the ListTypeRegistrations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTypeRegistrationsInput object being passed to this operation.
     - Returns: The ListTypeRegistrationsOutputForListTypeRegistrations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func listTypeRegistrations(
            input: CloudformationModel.ListTypeRegistrationsInput) async throws -> CloudformationModel.ListTypeRegistrationsOutputForListTypeRegistrations

    /**
     Invokes the ListTypeVersions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTypeVersionsInput object being passed to this operation.
     - Returns: The ListTypeVersionsOutputForListTypeVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func listTypeVersions(
            input: CloudformationModel.ListTypeVersionsInput) async throws -> CloudformationModel.ListTypeVersionsOutputForListTypeVersions

    /**
     Invokes the ListTypes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTypesInput object being passed to this operation.
     - Returns: The ListTypesOutputForListTypes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func listTypes(
            input: CloudformationModel.ListTypesInput) async throws -> CloudformationModel.ListTypesOutputForListTypes

    /**
     Invokes the PublishType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PublishTypeInput object being passed to this operation.
     - Returns: The PublishTypeOutputForPublishType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func publishType(
            input: CloudformationModel.PublishTypeInput) async throws -> CloudformationModel.PublishTypeOutputForPublishType

    /**
     Invokes the RecordHandlerProgress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RecordHandlerProgressInput object being passed to this operation.
     - Returns: The RecordHandlerProgressOutputForRecordHandlerProgress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidStateTransition, operationStatusCheckFailed.
     */
    func recordHandlerProgress(
            input: CloudformationModel.RecordHandlerProgressInput) async throws -> CloudformationModel.RecordHandlerProgressOutputForRecordHandlerProgress

    /**
     Invokes the RegisterPublisher operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterPublisherInput object being passed to this operation.
     - Returns: The RegisterPublisherOutputForRegisterPublisher object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func registerPublisher(
            input: CloudformationModel.RegisterPublisherInput) async throws -> CloudformationModel.RegisterPublisherOutputForRegisterPublisher

    /**
     Invokes the RegisterType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterTypeInput object being passed to this operation.
     - Returns: The RegisterTypeOutputForRegisterType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func registerType(
            input: CloudformationModel.RegisterTypeInput) async throws -> CloudformationModel.RegisterTypeOutputForRegisterType

    /**
     Invokes the RollbackStack operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RollbackStackInput object being passed to this operation.
     - Returns: The RollbackStackOutputForRollbackStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: tokenAlreadyExists.
     */
    func rollbackStack(
            input: CloudformationModel.RollbackStackInput) async throws -> CloudformationModel.RollbackStackOutputForRollbackStack

    /**
     Invokes the SetStackPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetStackPolicyInput object being passed to this operation.
     */
    func setStackPolicy(
            input: CloudformationModel.SetStackPolicyInput) async throws

    /**
     Invokes the SetTypeConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetTypeConfigurationInput object being passed to this operation.
     - Returns: The SetTypeConfigurationOutputForSetTypeConfiguration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func setTypeConfiguration(
            input: CloudformationModel.SetTypeConfigurationInput) async throws -> CloudformationModel.SetTypeConfigurationOutputForSetTypeConfiguration

    /**
     Invokes the SetTypeDefaultVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetTypeDefaultVersionInput object being passed to this operation.
     - Returns: The SetTypeDefaultVersionOutputForSetTypeDefaultVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func setTypeDefaultVersion(
            input: CloudformationModel.SetTypeDefaultVersionInput) async throws -> CloudformationModel.SetTypeDefaultVersionOutputForSetTypeDefaultVersion

    /**
     Invokes the SignalResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SignalResourceInput object being passed to this operation.
     */
    func signalResource(
            input: CloudformationModel.SignalResourceInput) async throws

    /**
     Invokes the StopStackSetOperation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopStackSetOperationInput object being passed to this operation.
     - Returns: The StopStackSetOperationOutputForStopStackSetOperation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationNotFound, stackSetNotFound.
     */
    func stopStackSetOperation(
            input: CloudformationModel.StopStackSetOperationInput) async throws -> CloudformationModel.StopStackSetOperationOutputForStopStackSetOperation

    /**
     Invokes the TestType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TestTypeInput object being passed to this operation.
     - Returns: The TestTypeOutputForTestType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func testType(
            input: CloudformationModel.TestTypeInput) async throws -> CloudformationModel.TestTypeOutputForTestType

    /**
     Invokes the UpdateStack operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateStackInput object being passed to this operation.
     - Returns: The UpdateStackOutputForUpdateStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: insufficientCapabilities, tokenAlreadyExists.
     */
    func updateStack(
            input: CloudformationModel.UpdateStackInput) async throws -> CloudformationModel.UpdateStackOutputForUpdateStack

    /**
     Invokes the UpdateStackInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateStackInstancesInput object being passed to this operation.
     - Returns: The UpdateStackInstancesOutputForUpdateStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationIdAlreadyExists, operationInProgress, stackInstanceNotFound, stackSetNotFound, staleRequest.
     */
    func updateStackInstances(
            input: CloudformationModel.UpdateStackInstancesInput) async throws -> CloudformationModel.UpdateStackInstancesOutputForUpdateStackInstances

    /**
     Invokes the UpdateStackSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateStackSetInput object being passed to this operation.
     - Returns: The UpdateStackSetOutputForUpdateStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationIdAlreadyExists, operationInProgress, stackInstanceNotFound, stackSetNotFound, staleRequest.
     */
    func updateStackSet(
            input: CloudformationModel.UpdateStackSetInput) async throws -> CloudformationModel.UpdateStackSetOutputForUpdateStackSet

    /**
     Invokes the UpdateTerminationProtection operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateTerminationProtectionInput object being passed to this operation.
     - Returns: The UpdateTerminationProtectionOutputForUpdateTerminationProtection object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func updateTerminationProtection(
            input: CloudformationModel.UpdateTerminationProtectionInput) async throws -> CloudformationModel.UpdateTerminationProtectionOutputForUpdateTerminationProtection

    /**
     Invokes the ValidateTemplate operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ValidateTemplateInput object being passed to this operation.
     - Returns: The ValidateTemplateOutputForValidateTemplate object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func validateTemplate(
            input: CloudformationModel.ValidateTemplateInput) async throws -> CloudformationModel.ValidateTemplateOutputForValidateTemplate
#endif
}
