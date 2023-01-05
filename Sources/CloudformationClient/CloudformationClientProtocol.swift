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
// CloudformationClientProtocol.swift
// CloudformationClient
//

import Foundation
import CloudformationModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the Cloudformation service.
 */
public protocol CloudformationClientProtocol: CloudformationClientProtocolV2 {
    typealias ActivateTypeSyncType = (
            _ input: CloudformationModel.ActivateTypeInput) throws -> CloudformationModel.ActivateTypeOutputForActivateType
    typealias ActivateTypeAsyncType = (
            _ input: CloudformationModel.ActivateTypeInput, 
            _ completion: @escaping (Result<CloudformationModel.ActivateTypeOutputForActivateType, CloudformationError>) -> ()) throws -> ()
    typealias BatchDescribeTypeConfigurationsSyncType = (
            _ input: CloudformationModel.BatchDescribeTypeConfigurationsInput) throws -> CloudformationModel.BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations
    typealias BatchDescribeTypeConfigurationsAsyncType = (
            _ input: CloudformationModel.BatchDescribeTypeConfigurationsInput, 
            _ completion: @escaping (Result<CloudformationModel.BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations, CloudformationError>) -> ()) throws -> ()
    typealias CancelUpdateStackSyncType = (
            _ input: CloudformationModel.CancelUpdateStackInput) throws -> ()
    typealias CancelUpdateStackAsyncType = (
            _ input: CloudformationModel.CancelUpdateStackInput, 
            _ completion: @escaping (CloudformationError?) -> ()) throws -> ()
    typealias ContinueUpdateRollbackSyncType = (
            _ input: CloudformationModel.ContinueUpdateRollbackInput) throws -> CloudformationModel.ContinueUpdateRollbackOutputForContinueUpdateRollback
    typealias ContinueUpdateRollbackAsyncType = (
            _ input: CloudformationModel.ContinueUpdateRollbackInput, 
            _ completion: @escaping (Result<CloudformationModel.ContinueUpdateRollbackOutputForContinueUpdateRollback, CloudformationError>) -> ()) throws -> ()
    typealias CreateChangeSetSyncType = (
            _ input: CloudformationModel.CreateChangeSetInput) throws -> CloudformationModel.CreateChangeSetOutputForCreateChangeSet
    typealias CreateChangeSetAsyncType = (
            _ input: CloudformationModel.CreateChangeSetInput, 
            _ completion: @escaping (Result<CloudformationModel.CreateChangeSetOutputForCreateChangeSet, CloudformationError>) -> ()) throws -> ()
    typealias CreateStackSyncType = (
            _ input: CloudformationModel.CreateStackInput) throws -> CloudformationModel.CreateStackOutputForCreateStack
    typealias CreateStackAsyncType = (
            _ input: CloudformationModel.CreateStackInput, 
            _ completion: @escaping (Result<CloudformationModel.CreateStackOutputForCreateStack, CloudformationError>) -> ()) throws -> ()
    typealias CreateStackInstancesSyncType = (
            _ input: CloudformationModel.CreateStackInstancesInput) throws -> CloudformationModel.CreateStackInstancesOutputForCreateStackInstances
    typealias CreateStackInstancesAsyncType = (
            _ input: CloudformationModel.CreateStackInstancesInput, 
            _ completion: @escaping (Result<CloudformationModel.CreateStackInstancesOutputForCreateStackInstances, CloudformationError>) -> ()) throws -> ()
    typealias CreateStackSetSyncType = (
            _ input: CloudformationModel.CreateStackSetInput) throws -> CloudformationModel.CreateStackSetOutputForCreateStackSet
    typealias CreateStackSetAsyncType = (
            _ input: CloudformationModel.CreateStackSetInput, 
            _ completion: @escaping (Result<CloudformationModel.CreateStackSetOutputForCreateStackSet, CloudformationError>) -> ()) throws -> ()
    typealias DeactivateTypeSyncType = (
            _ input: CloudformationModel.DeactivateTypeInput) throws -> CloudformationModel.DeactivateTypeOutputForDeactivateType
    typealias DeactivateTypeAsyncType = (
            _ input: CloudformationModel.DeactivateTypeInput, 
            _ completion: @escaping (Result<CloudformationModel.DeactivateTypeOutputForDeactivateType, CloudformationError>) -> ()) throws -> ()
    typealias DeleteChangeSetSyncType = (
            _ input: CloudformationModel.DeleteChangeSetInput) throws -> CloudformationModel.DeleteChangeSetOutputForDeleteChangeSet
    typealias DeleteChangeSetAsyncType = (
            _ input: CloudformationModel.DeleteChangeSetInput, 
            _ completion: @escaping (Result<CloudformationModel.DeleteChangeSetOutputForDeleteChangeSet, CloudformationError>) -> ()) throws -> ()
    typealias DeleteStackSyncType = (
            _ input: CloudformationModel.DeleteStackInput) throws -> ()
    typealias DeleteStackAsyncType = (
            _ input: CloudformationModel.DeleteStackInput, 
            _ completion: @escaping (CloudformationError?) -> ()) throws -> ()
    typealias DeleteStackInstancesSyncType = (
            _ input: CloudformationModel.DeleteStackInstancesInput) throws -> CloudformationModel.DeleteStackInstancesOutputForDeleteStackInstances
    typealias DeleteStackInstancesAsyncType = (
            _ input: CloudformationModel.DeleteStackInstancesInput, 
            _ completion: @escaping (Result<CloudformationModel.DeleteStackInstancesOutputForDeleteStackInstances, CloudformationError>) -> ()) throws -> ()
    typealias DeleteStackSetSyncType = (
            _ input: CloudformationModel.DeleteStackSetInput) throws -> CloudformationModel.DeleteStackSetOutputForDeleteStackSet
    typealias DeleteStackSetAsyncType = (
            _ input: CloudformationModel.DeleteStackSetInput, 
            _ completion: @escaping (Result<CloudformationModel.DeleteStackSetOutputForDeleteStackSet, CloudformationError>) -> ()) throws -> ()
    typealias DeregisterTypeSyncType = (
            _ input: CloudformationModel.DeregisterTypeInput) throws -> CloudformationModel.DeregisterTypeOutputForDeregisterType
    typealias DeregisterTypeAsyncType = (
            _ input: CloudformationModel.DeregisterTypeInput, 
            _ completion: @escaping (Result<CloudformationModel.DeregisterTypeOutputForDeregisterType, CloudformationError>) -> ()) throws -> ()
    typealias DescribeAccountLimitsSyncType = (
            _ input: CloudformationModel.DescribeAccountLimitsInput) throws -> CloudformationModel.DescribeAccountLimitsOutputForDescribeAccountLimits
    typealias DescribeAccountLimitsAsyncType = (
            _ input: CloudformationModel.DescribeAccountLimitsInput, 
            _ completion: @escaping (Result<CloudformationModel.DescribeAccountLimitsOutputForDescribeAccountLimits, CloudformationError>) -> ()) throws -> ()
    typealias DescribeChangeSetSyncType = (
            _ input: CloudformationModel.DescribeChangeSetInput) throws -> CloudformationModel.DescribeChangeSetOutputForDescribeChangeSet
    typealias DescribeChangeSetAsyncType = (
            _ input: CloudformationModel.DescribeChangeSetInput, 
            _ completion: @escaping (Result<CloudformationModel.DescribeChangeSetOutputForDescribeChangeSet, CloudformationError>) -> ()) throws -> ()
    typealias DescribeChangeSetHooksSyncType = (
            _ input: CloudformationModel.DescribeChangeSetHooksInput) throws -> CloudformationModel.DescribeChangeSetHooksOutputForDescribeChangeSetHooks
    typealias DescribeChangeSetHooksAsyncType = (
            _ input: CloudformationModel.DescribeChangeSetHooksInput, 
            _ completion: @escaping (Result<CloudformationModel.DescribeChangeSetHooksOutputForDescribeChangeSetHooks, CloudformationError>) -> ()) throws -> ()
    typealias DescribePublisherSyncType = (
            _ input: CloudformationModel.DescribePublisherInput) throws -> CloudformationModel.DescribePublisherOutputForDescribePublisher
    typealias DescribePublisherAsyncType = (
            _ input: CloudformationModel.DescribePublisherInput, 
            _ completion: @escaping (Result<CloudformationModel.DescribePublisherOutputForDescribePublisher, CloudformationError>) -> ()) throws -> ()
    typealias DescribeStackDriftDetectionStatusSyncType = (
            _ input: CloudformationModel.DescribeStackDriftDetectionStatusInput) throws -> CloudformationModel.DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus
    typealias DescribeStackDriftDetectionStatusAsyncType = (
            _ input: CloudformationModel.DescribeStackDriftDetectionStatusInput, 
            _ completion: @escaping (Result<CloudformationModel.DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus, CloudformationError>) -> ()) throws -> ()
    typealias DescribeStackEventsSyncType = (
            _ input: CloudformationModel.DescribeStackEventsInput) throws -> CloudformationModel.DescribeStackEventsOutputForDescribeStackEvents
    typealias DescribeStackEventsAsyncType = (
            _ input: CloudformationModel.DescribeStackEventsInput, 
            _ completion: @escaping (Result<CloudformationModel.DescribeStackEventsOutputForDescribeStackEvents, CloudformationError>) -> ()) throws -> ()
    typealias DescribeStackInstanceSyncType = (
            _ input: CloudformationModel.DescribeStackInstanceInput) throws -> CloudformationModel.DescribeStackInstanceOutputForDescribeStackInstance
    typealias DescribeStackInstanceAsyncType = (
            _ input: CloudformationModel.DescribeStackInstanceInput, 
            _ completion: @escaping (Result<CloudformationModel.DescribeStackInstanceOutputForDescribeStackInstance, CloudformationError>) -> ()) throws -> ()
    typealias DescribeStackResourceSyncType = (
            _ input: CloudformationModel.DescribeStackResourceInput) throws -> CloudformationModel.DescribeStackResourceOutputForDescribeStackResource
    typealias DescribeStackResourceAsyncType = (
            _ input: CloudformationModel.DescribeStackResourceInput, 
            _ completion: @escaping (Result<CloudformationModel.DescribeStackResourceOutputForDescribeStackResource, CloudformationError>) -> ()) throws -> ()
    typealias DescribeStackResourceDriftsSyncType = (
            _ input: CloudformationModel.DescribeStackResourceDriftsInput) throws -> CloudformationModel.DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts
    typealias DescribeStackResourceDriftsAsyncType = (
            _ input: CloudformationModel.DescribeStackResourceDriftsInput, 
            _ completion: @escaping (Result<CloudformationModel.DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts, CloudformationError>) -> ()) throws -> ()
    typealias DescribeStackResourcesSyncType = (
            _ input: CloudformationModel.DescribeStackResourcesInput) throws -> CloudformationModel.DescribeStackResourcesOutputForDescribeStackResources
    typealias DescribeStackResourcesAsyncType = (
            _ input: CloudformationModel.DescribeStackResourcesInput, 
            _ completion: @escaping (Result<CloudformationModel.DescribeStackResourcesOutputForDescribeStackResources, CloudformationError>) -> ()) throws -> ()
    typealias DescribeStackSetSyncType = (
            _ input: CloudformationModel.DescribeStackSetInput) throws -> CloudformationModel.DescribeStackSetOutputForDescribeStackSet
    typealias DescribeStackSetAsyncType = (
            _ input: CloudformationModel.DescribeStackSetInput, 
            _ completion: @escaping (Result<CloudformationModel.DescribeStackSetOutputForDescribeStackSet, CloudformationError>) -> ()) throws -> ()
    typealias DescribeStackSetOperationSyncType = (
            _ input: CloudformationModel.DescribeStackSetOperationInput) throws -> CloudformationModel.DescribeStackSetOperationOutputForDescribeStackSetOperation
    typealias DescribeStackSetOperationAsyncType = (
            _ input: CloudformationModel.DescribeStackSetOperationInput, 
            _ completion: @escaping (Result<CloudformationModel.DescribeStackSetOperationOutputForDescribeStackSetOperation, CloudformationError>) -> ()) throws -> ()
    typealias DescribeStacksSyncType = (
            _ input: CloudformationModel.DescribeStacksInput) throws -> CloudformationModel.DescribeStacksOutputForDescribeStacks
    typealias DescribeStacksAsyncType = (
            _ input: CloudformationModel.DescribeStacksInput, 
            _ completion: @escaping (Result<CloudformationModel.DescribeStacksOutputForDescribeStacks, CloudformationError>) -> ()) throws -> ()
    typealias DescribeTypeSyncType = (
            _ input: CloudformationModel.DescribeTypeInput) throws -> CloudformationModel.DescribeTypeOutputForDescribeType
    typealias DescribeTypeAsyncType = (
            _ input: CloudformationModel.DescribeTypeInput, 
            _ completion: @escaping (Result<CloudformationModel.DescribeTypeOutputForDescribeType, CloudformationError>) -> ()) throws -> ()
    typealias DescribeTypeRegistrationSyncType = (
            _ input: CloudformationModel.DescribeTypeRegistrationInput) throws -> CloudformationModel.DescribeTypeRegistrationOutputForDescribeTypeRegistration
    typealias DescribeTypeRegistrationAsyncType = (
            _ input: CloudformationModel.DescribeTypeRegistrationInput, 
            _ completion: @escaping (Result<CloudformationModel.DescribeTypeRegistrationOutputForDescribeTypeRegistration, CloudformationError>) -> ()) throws -> ()
    typealias DetectStackDriftSyncType = (
            _ input: CloudformationModel.DetectStackDriftInput) throws -> CloudformationModel.DetectStackDriftOutputForDetectStackDrift
    typealias DetectStackDriftAsyncType = (
            _ input: CloudformationModel.DetectStackDriftInput, 
            _ completion: @escaping (Result<CloudformationModel.DetectStackDriftOutputForDetectStackDrift, CloudformationError>) -> ()) throws -> ()
    typealias DetectStackResourceDriftSyncType = (
            _ input: CloudformationModel.DetectStackResourceDriftInput) throws -> CloudformationModel.DetectStackResourceDriftOutputForDetectStackResourceDrift
    typealias DetectStackResourceDriftAsyncType = (
            _ input: CloudformationModel.DetectStackResourceDriftInput, 
            _ completion: @escaping (Result<CloudformationModel.DetectStackResourceDriftOutputForDetectStackResourceDrift, CloudformationError>) -> ()) throws -> ()
    typealias DetectStackSetDriftSyncType = (
            _ input: CloudformationModel.DetectStackSetDriftInput) throws -> CloudformationModel.DetectStackSetDriftOutputForDetectStackSetDrift
    typealias DetectStackSetDriftAsyncType = (
            _ input: CloudformationModel.DetectStackSetDriftInput, 
            _ completion: @escaping (Result<CloudformationModel.DetectStackSetDriftOutputForDetectStackSetDrift, CloudformationError>) -> ()) throws -> ()
    typealias EstimateTemplateCostSyncType = (
            _ input: CloudformationModel.EstimateTemplateCostInput) throws -> CloudformationModel.EstimateTemplateCostOutputForEstimateTemplateCost
    typealias EstimateTemplateCostAsyncType = (
            _ input: CloudformationModel.EstimateTemplateCostInput, 
            _ completion: @escaping (Result<CloudformationModel.EstimateTemplateCostOutputForEstimateTemplateCost, CloudformationError>) -> ()) throws -> ()
    typealias ExecuteChangeSetSyncType = (
            _ input: CloudformationModel.ExecuteChangeSetInput) throws -> CloudformationModel.ExecuteChangeSetOutputForExecuteChangeSet
    typealias ExecuteChangeSetAsyncType = (
            _ input: CloudformationModel.ExecuteChangeSetInput, 
            _ completion: @escaping (Result<CloudformationModel.ExecuteChangeSetOutputForExecuteChangeSet, CloudformationError>) -> ()) throws -> ()
    typealias GetStackPolicySyncType = (
            _ input: CloudformationModel.GetStackPolicyInput) throws -> CloudformationModel.GetStackPolicyOutputForGetStackPolicy
    typealias GetStackPolicyAsyncType = (
            _ input: CloudformationModel.GetStackPolicyInput, 
            _ completion: @escaping (Result<CloudformationModel.GetStackPolicyOutputForGetStackPolicy, CloudformationError>) -> ()) throws -> ()
    typealias GetTemplateSyncType = (
            _ input: CloudformationModel.GetTemplateInput) throws -> CloudformationModel.GetTemplateOutputForGetTemplate
    typealias GetTemplateAsyncType = (
            _ input: CloudformationModel.GetTemplateInput, 
            _ completion: @escaping (Result<CloudformationModel.GetTemplateOutputForGetTemplate, CloudformationError>) -> ()) throws -> ()
    typealias GetTemplateSummarySyncType = (
            _ input: CloudformationModel.GetTemplateSummaryInput) throws -> CloudformationModel.GetTemplateSummaryOutputForGetTemplateSummary
    typealias GetTemplateSummaryAsyncType = (
            _ input: CloudformationModel.GetTemplateSummaryInput, 
            _ completion: @escaping (Result<CloudformationModel.GetTemplateSummaryOutputForGetTemplateSummary, CloudformationError>) -> ()) throws -> ()
    typealias ImportStacksToStackSetSyncType = (
            _ input: CloudformationModel.ImportStacksToStackSetInput) throws -> CloudformationModel.ImportStacksToStackSetOutputForImportStacksToStackSet
    typealias ImportStacksToStackSetAsyncType = (
            _ input: CloudformationModel.ImportStacksToStackSetInput, 
            _ completion: @escaping (Result<CloudformationModel.ImportStacksToStackSetOutputForImportStacksToStackSet, CloudformationError>) -> ()) throws -> ()
    typealias ListChangeSetsSyncType = (
            _ input: CloudformationModel.ListChangeSetsInput) throws -> CloudformationModel.ListChangeSetsOutputForListChangeSets
    typealias ListChangeSetsAsyncType = (
            _ input: CloudformationModel.ListChangeSetsInput, 
            _ completion: @escaping (Result<CloudformationModel.ListChangeSetsOutputForListChangeSets, CloudformationError>) -> ()) throws -> ()
    typealias ListExportsSyncType = (
            _ input: CloudformationModel.ListExportsInput) throws -> CloudformationModel.ListExportsOutputForListExports
    typealias ListExportsAsyncType = (
            _ input: CloudformationModel.ListExportsInput, 
            _ completion: @escaping (Result<CloudformationModel.ListExportsOutputForListExports, CloudformationError>) -> ()) throws -> ()
    typealias ListImportsSyncType = (
            _ input: CloudformationModel.ListImportsInput) throws -> CloudformationModel.ListImportsOutputForListImports
    typealias ListImportsAsyncType = (
            _ input: CloudformationModel.ListImportsInput, 
            _ completion: @escaping (Result<CloudformationModel.ListImportsOutputForListImports, CloudformationError>) -> ()) throws -> ()
    typealias ListStackInstancesSyncType = (
            _ input: CloudformationModel.ListStackInstancesInput) throws -> CloudformationModel.ListStackInstancesOutputForListStackInstances
    typealias ListStackInstancesAsyncType = (
            _ input: CloudformationModel.ListStackInstancesInput, 
            _ completion: @escaping (Result<CloudformationModel.ListStackInstancesOutputForListStackInstances, CloudformationError>) -> ()) throws -> ()
    typealias ListStackResourcesSyncType = (
            _ input: CloudformationModel.ListStackResourcesInput) throws -> CloudformationModel.ListStackResourcesOutputForListStackResources
    typealias ListStackResourcesAsyncType = (
            _ input: CloudformationModel.ListStackResourcesInput, 
            _ completion: @escaping (Result<CloudformationModel.ListStackResourcesOutputForListStackResources, CloudformationError>) -> ()) throws -> ()
    typealias ListStackSetOperationResultsSyncType = (
            _ input: CloudformationModel.ListStackSetOperationResultsInput) throws -> CloudformationModel.ListStackSetOperationResultsOutputForListStackSetOperationResults
    typealias ListStackSetOperationResultsAsyncType = (
            _ input: CloudformationModel.ListStackSetOperationResultsInput, 
            _ completion: @escaping (Result<CloudformationModel.ListStackSetOperationResultsOutputForListStackSetOperationResults, CloudformationError>) -> ()) throws -> ()
    typealias ListStackSetOperationsSyncType = (
            _ input: CloudformationModel.ListStackSetOperationsInput) throws -> CloudformationModel.ListStackSetOperationsOutputForListStackSetOperations
    typealias ListStackSetOperationsAsyncType = (
            _ input: CloudformationModel.ListStackSetOperationsInput, 
            _ completion: @escaping (Result<CloudformationModel.ListStackSetOperationsOutputForListStackSetOperations, CloudformationError>) -> ()) throws -> ()
    typealias ListStackSetsSyncType = (
            _ input: CloudformationModel.ListStackSetsInput) throws -> CloudformationModel.ListStackSetsOutputForListStackSets
    typealias ListStackSetsAsyncType = (
            _ input: CloudformationModel.ListStackSetsInput, 
            _ completion: @escaping (Result<CloudformationModel.ListStackSetsOutputForListStackSets, CloudformationError>) -> ()) throws -> ()
    typealias ListStacksSyncType = (
            _ input: CloudformationModel.ListStacksInput) throws -> CloudformationModel.ListStacksOutputForListStacks
    typealias ListStacksAsyncType = (
            _ input: CloudformationModel.ListStacksInput, 
            _ completion: @escaping (Result<CloudformationModel.ListStacksOutputForListStacks, CloudformationError>) -> ()) throws -> ()
    typealias ListTypeRegistrationsSyncType = (
            _ input: CloudformationModel.ListTypeRegistrationsInput) throws -> CloudformationModel.ListTypeRegistrationsOutputForListTypeRegistrations
    typealias ListTypeRegistrationsAsyncType = (
            _ input: CloudformationModel.ListTypeRegistrationsInput, 
            _ completion: @escaping (Result<CloudformationModel.ListTypeRegistrationsOutputForListTypeRegistrations, CloudformationError>) -> ()) throws -> ()
    typealias ListTypeVersionsSyncType = (
            _ input: CloudformationModel.ListTypeVersionsInput) throws -> CloudformationModel.ListTypeVersionsOutputForListTypeVersions
    typealias ListTypeVersionsAsyncType = (
            _ input: CloudformationModel.ListTypeVersionsInput, 
            _ completion: @escaping (Result<CloudformationModel.ListTypeVersionsOutputForListTypeVersions, CloudformationError>) -> ()) throws -> ()
    typealias ListTypesSyncType = (
            _ input: CloudformationModel.ListTypesInput) throws -> CloudformationModel.ListTypesOutputForListTypes
    typealias ListTypesAsyncType = (
            _ input: CloudformationModel.ListTypesInput, 
            _ completion: @escaping (Result<CloudformationModel.ListTypesOutputForListTypes, CloudformationError>) -> ()) throws -> ()
    typealias PublishTypeSyncType = (
            _ input: CloudformationModel.PublishTypeInput) throws -> CloudformationModel.PublishTypeOutputForPublishType
    typealias PublishTypeAsyncType = (
            _ input: CloudformationModel.PublishTypeInput, 
            _ completion: @escaping (Result<CloudformationModel.PublishTypeOutputForPublishType, CloudformationError>) -> ()) throws -> ()
    typealias RecordHandlerProgressSyncType = (
            _ input: CloudformationModel.RecordHandlerProgressInput) throws -> CloudformationModel.RecordHandlerProgressOutputForRecordHandlerProgress
    typealias RecordHandlerProgressAsyncType = (
            _ input: CloudformationModel.RecordHandlerProgressInput, 
            _ completion: @escaping (Result<CloudformationModel.RecordHandlerProgressOutputForRecordHandlerProgress, CloudformationError>) -> ()) throws -> ()
    typealias RegisterPublisherSyncType = (
            _ input: CloudformationModel.RegisterPublisherInput) throws -> CloudformationModel.RegisterPublisherOutputForRegisterPublisher
    typealias RegisterPublisherAsyncType = (
            _ input: CloudformationModel.RegisterPublisherInput, 
            _ completion: @escaping (Result<CloudformationModel.RegisterPublisherOutputForRegisterPublisher, CloudformationError>) -> ()) throws -> ()
    typealias RegisterTypeSyncType = (
            _ input: CloudformationModel.RegisterTypeInput) throws -> CloudformationModel.RegisterTypeOutputForRegisterType
    typealias RegisterTypeAsyncType = (
            _ input: CloudformationModel.RegisterTypeInput, 
            _ completion: @escaping (Result<CloudformationModel.RegisterTypeOutputForRegisterType, CloudformationError>) -> ()) throws -> ()
    typealias RollbackStackSyncType = (
            _ input: CloudformationModel.RollbackStackInput) throws -> CloudformationModel.RollbackStackOutputForRollbackStack
    typealias RollbackStackAsyncType = (
            _ input: CloudformationModel.RollbackStackInput, 
            _ completion: @escaping (Result<CloudformationModel.RollbackStackOutputForRollbackStack, CloudformationError>) -> ()) throws -> ()
    typealias SetStackPolicySyncType = (
            _ input: CloudformationModel.SetStackPolicyInput) throws -> ()
    typealias SetStackPolicyAsyncType = (
            _ input: CloudformationModel.SetStackPolicyInput, 
            _ completion: @escaping (CloudformationError?) -> ()) throws -> ()
    typealias SetTypeConfigurationSyncType = (
            _ input: CloudformationModel.SetTypeConfigurationInput) throws -> CloudformationModel.SetTypeConfigurationOutputForSetTypeConfiguration
    typealias SetTypeConfigurationAsyncType = (
            _ input: CloudformationModel.SetTypeConfigurationInput, 
            _ completion: @escaping (Result<CloudformationModel.SetTypeConfigurationOutputForSetTypeConfiguration, CloudformationError>) -> ()) throws -> ()
    typealias SetTypeDefaultVersionSyncType = (
            _ input: CloudformationModel.SetTypeDefaultVersionInput) throws -> CloudformationModel.SetTypeDefaultVersionOutputForSetTypeDefaultVersion
    typealias SetTypeDefaultVersionAsyncType = (
            _ input: CloudformationModel.SetTypeDefaultVersionInput, 
            _ completion: @escaping (Result<CloudformationModel.SetTypeDefaultVersionOutputForSetTypeDefaultVersion, CloudformationError>) -> ()) throws -> ()
    typealias SignalResourceSyncType = (
            _ input: CloudformationModel.SignalResourceInput) throws -> ()
    typealias SignalResourceAsyncType = (
            _ input: CloudformationModel.SignalResourceInput, 
            _ completion: @escaping (CloudformationError?) -> ()) throws -> ()
    typealias StopStackSetOperationSyncType = (
            _ input: CloudformationModel.StopStackSetOperationInput) throws -> CloudformationModel.StopStackSetOperationOutputForStopStackSetOperation
    typealias StopStackSetOperationAsyncType = (
            _ input: CloudformationModel.StopStackSetOperationInput, 
            _ completion: @escaping (Result<CloudformationModel.StopStackSetOperationOutputForStopStackSetOperation, CloudformationError>) -> ()) throws -> ()
    typealias TestTypeSyncType = (
            _ input: CloudformationModel.TestTypeInput) throws -> CloudformationModel.TestTypeOutputForTestType
    typealias TestTypeAsyncType = (
            _ input: CloudformationModel.TestTypeInput, 
            _ completion: @escaping (Result<CloudformationModel.TestTypeOutputForTestType, CloudformationError>) -> ()) throws -> ()
    typealias UpdateStackSyncType = (
            _ input: CloudformationModel.UpdateStackInput) throws -> CloudformationModel.UpdateStackOutputForUpdateStack
    typealias UpdateStackAsyncType = (
            _ input: CloudformationModel.UpdateStackInput, 
            _ completion: @escaping (Result<CloudformationModel.UpdateStackOutputForUpdateStack, CloudformationError>) -> ()) throws -> ()
    typealias UpdateStackInstancesSyncType = (
            _ input: CloudformationModel.UpdateStackInstancesInput) throws -> CloudformationModel.UpdateStackInstancesOutputForUpdateStackInstances
    typealias UpdateStackInstancesAsyncType = (
            _ input: CloudformationModel.UpdateStackInstancesInput, 
            _ completion: @escaping (Result<CloudformationModel.UpdateStackInstancesOutputForUpdateStackInstances, CloudformationError>) -> ()) throws -> ()
    typealias UpdateStackSetSyncType = (
            _ input: CloudformationModel.UpdateStackSetInput) throws -> CloudformationModel.UpdateStackSetOutputForUpdateStackSet
    typealias UpdateStackSetAsyncType = (
            _ input: CloudformationModel.UpdateStackSetInput, 
            _ completion: @escaping (Result<CloudformationModel.UpdateStackSetOutputForUpdateStackSet, CloudformationError>) -> ()) throws -> ()
    typealias UpdateTerminationProtectionSyncType = (
            _ input: CloudformationModel.UpdateTerminationProtectionInput) throws -> CloudformationModel.UpdateTerminationProtectionOutputForUpdateTerminationProtection
    typealias UpdateTerminationProtectionAsyncType = (
            _ input: CloudformationModel.UpdateTerminationProtectionInput, 
            _ completion: @escaping (Result<CloudformationModel.UpdateTerminationProtectionOutputForUpdateTerminationProtection, CloudformationError>) -> ()) throws -> ()
    typealias ValidateTemplateSyncType = (
            _ input: CloudformationModel.ValidateTemplateInput) throws -> CloudformationModel.ValidateTemplateOutputForValidateTemplate
    typealias ValidateTemplateAsyncType = (
            _ input: CloudformationModel.ValidateTemplateInput, 
            _ completion: @escaping (Result<CloudformationModel.ValidateTemplateOutputForValidateTemplate, CloudformationError>) -> ()) throws -> ()

    /**
     Invokes the ActivateType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ActivateTypeInput object being passed to this operation.
         - completion: The ActivateTypeOutputForActivateType object or an error will be passed to this 
           callback when the operation is complete. The ActivateTypeOutputForActivateType
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    func activateTypeAsync(
            input: CloudformationModel.ActivateTypeInput, 
            completion: @escaping (Result<CloudformationModel.ActivateTypeOutputForActivateType, CloudformationError>) -> ()) throws

    /**
     Invokes the ActivateType operation waiting for the response before returning.

     - Parameters:
         - input: The validated ActivateTypeInput object being passed to this operation.
     - Returns: The ActivateTypeOutputForActivateType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func activateTypeSync(
            input: CloudformationModel.ActivateTypeInput) throws -> CloudformationModel.ActivateTypeOutputForActivateType

    /**
     Invokes the BatchDescribeTypeConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchDescribeTypeConfigurationsInput object being passed to this operation.
         - completion: The BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations object or an error will be passed to this 
           callback when the operation is complete. The BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeConfigurationNotFound.
     */
    func batchDescribeTypeConfigurationsAsync(
            input: CloudformationModel.BatchDescribeTypeConfigurationsInput, 
            completion: @escaping (Result<CloudformationModel.BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations, CloudformationError>) -> ()) throws

    /**
     Invokes the BatchDescribeTypeConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchDescribeTypeConfigurationsInput object being passed to this operation.
     - Returns: The BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeConfigurationNotFound.
     */
    func batchDescribeTypeConfigurationsSync(
            input: CloudformationModel.BatchDescribeTypeConfigurationsInput) throws -> CloudformationModel.BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations

    /**
     Invokes the CancelUpdateStack operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelUpdateStackInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: tokenAlreadyExists.
     */
    func cancelUpdateStackAsync(
            input: CloudformationModel.CancelUpdateStackInput, 
            completion: @escaping (CloudformationError?) -> ()) throws

    /**
     Invokes the CancelUpdateStack operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelUpdateStackInput object being passed to this operation.
     - Throws: tokenAlreadyExists.
     */
    func cancelUpdateStackSync(
            input: CloudformationModel.CancelUpdateStackInput) throws

    /**
     Invokes the ContinueUpdateRollback operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ContinueUpdateRollbackInput object being passed to this operation.
         - completion: The ContinueUpdateRollbackOutputForContinueUpdateRollback object or an error will be passed to this 
           callback when the operation is complete. The ContinueUpdateRollbackOutputForContinueUpdateRollback
           object will be validated before being returned to caller.
           The possible errors are: tokenAlreadyExists.
     */
    func continueUpdateRollbackAsync(
            input: CloudformationModel.ContinueUpdateRollbackInput, 
            completion: @escaping (Result<CloudformationModel.ContinueUpdateRollbackOutputForContinueUpdateRollback, CloudformationError>) -> ()) throws

    /**
     Invokes the ContinueUpdateRollback operation waiting for the response before returning.

     - Parameters:
         - input: The validated ContinueUpdateRollbackInput object being passed to this operation.
     - Returns: The ContinueUpdateRollbackOutputForContinueUpdateRollback object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: tokenAlreadyExists.
     */
    func continueUpdateRollbackSync(
            input: CloudformationModel.ContinueUpdateRollbackInput) throws -> CloudformationModel.ContinueUpdateRollbackOutputForContinueUpdateRollback

    /**
     Invokes the CreateChangeSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateChangeSetInput object being passed to this operation.
         - completion: The CreateChangeSetOutputForCreateChangeSet object or an error will be passed to this 
           callback when the operation is complete. The CreateChangeSetOutputForCreateChangeSet
           object will be validated before being returned to caller.
           The possible errors are: alreadyExists, insufficientCapabilities, limitExceeded.
     */
    func createChangeSetAsync(
            input: CloudformationModel.CreateChangeSetInput, 
            completion: @escaping (Result<CloudformationModel.CreateChangeSetOutputForCreateChangeSet, CloudformationError>) -> ()) throws

    /**
     Invokes the CreateChangeSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateChangeSetInput object being passed to this operation.
     - Returns: The CreateChangeSetOutputForCreateChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: alreadyExists, insufficientCapabilities, limitExceeded.
     */
    func createChangeSetSync(
            input: CloudformationModel.CreateChangeSetInput) throws -> CloudformationModel.CreateChangeSetOutputForCreateChangeSet

    /**
     Invokes the CreateStack operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateStackInput object being passed to this operation.
         - completion: The CreateStackOutputForCreateStack object or an error will be passed to this 
           callback when the operation is complete. The CreateStackOutputForCreateStack
           object will be validated before being returned to caller.
           The possible errors are: alreadyExists, insufficientCapabilities, limitExceeded, tokenAlreadyExists.
     */
    func createStackAsync(
            input: CloudformationModel.CreateStackInput, 
            completion: @escaping (Result<CloudformationModel.CreateStackOutputForCreateStack, CloudformationError>) -> ()) throws

    /**
     Invokes the CreateStack operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateStackInput object being passed to this operation.
     - Returns: The CreateStackOutputForCreateStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: alreadyExists, insufficientCapabilities, limitExceeded, tokenAlreadyExists.
     */
    func createStackSync(
            input: CloudformationModel.CreateStackInput) throws -> CloudformationModel.CreateStackOutputForCreateStack

    /**
     Invokes the CreateStackInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateStackInstancesInput object being passed to this operation.
         - completion: The CreateStackInstancesOutputForCreateStackInstances object or an error will be passed to this 
           callback when the operation is complete. The CreateStackInstancesOutputForCreateStackInstances
           object will be validated before being returned to caller.
           The possible errors are: invalidOperation, limitExceeded, operationIdAlreadyExists, operationInProgress, stackSetNotFound, staleRequest.
     */
    func createStackInstancesAsync(
            input: CloudformationModel.CreateStackInstancesInput, 
            completion: @escaping (Result<CloudformationModel.CreateStackInstancesOutputForCreateStackInstances, CloudformationError>) -> ()) throws

    /**
     Invokes the CreateStackInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateStackInstancesInput object being passed to this operation.
     - Returns: The CreateStackInstancesOutputForCreateStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, limitExceeded, operationIdAlreadyExists, operationInProgress, stackSetNotFound, staleRequest.
     */
    func createStackInstancesSync(
            input: CloudformationModel.CreateStackInstancesInput) throws -> CloudformationModel.CreateStackInstancesOutputForCreateStackInstances

    /**
     Invokes the CreateStackSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateStackSetInput object being passed to this operation.
         - completion: The CreateStackSetOutputForCreateStackSet object or an error will be passed to this 
           callback when the operation is complete. The CreateStackSetOutputForCreateStackSet
           object will be validated before being returned to caller.
           The possible errors are: createdButModified, limitExceeded, nameAlreadyExists.
     */
    func createStackSetAsync(
            input: CloudformationModel.CreateStackSetInput, 
            completion: @escaping (Result<CloudformationModel.CreateStackSetOutputForCreateStackSet, CloudformationError>) -> ()) throws

    /**
     Invokes the CreateStackSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateStackSetInput object being passed to this operation.
     - Returns: The CreateStackSetOutputForCreateStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: createdButModified, limitExceeded, nameAlreadyExists.
     */
    func createStackSetSync(
            input: CloudformationModel.CreateStackSetInput) throws -> CloudformationModel.CreateStackSetOutputForCreateStackSet

    /**
     Invokes the DeactivateType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeactivateTypeInput object being passed to this operation.
         - completion: The DeactivateTypeOutputForDeactivateType object or an error will be passed to this 
           callback when the operation is complete. The DeactivateTypeOutputForDeactivateType
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    func deactivateTypeAsync(
            input: CloudformationModel.DeactivateTypeInput, 
            completion: @escaping (Result<CloudformationModel.DeactivateTypeOutputForDeactivateType, CloudformationError>) -> ()) throws

    /**
     Invokes the DeactivateType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeactivateTypeInput object being passed to this operation.
     - Returns: The DeactivateTypeOutputForDeactivateType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func deactivateTypeSync(
            input: CloudformationModel.DeactivateTypeInput) throws -> CloudformationModel.DeactivateTypeOutputForDeactivateType

    /**
     Invokes the DeleteChangeSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteChangeSetInput object being passed to this operation.
         - completion: The DeleteChangeSetOutputForDeleteChangeSet object or an error will be passed to this 
           callback when the operation is complete. The DeleteChangeSetOutputForDeleteChangeSet
           object will be validated before being returned to caller.
           The possible errors are: invalidChangeSetStatus.
     */
    func deleteChangeSetAsync(
            input: CloudformationModel.DeleteChangeSetInput, 
            completion: @escaping (Result<CloudformationModel.DeleteChangeSetOutputForDeleteChangeSet, CloudformationError>) -> ()) throws

    /**
     Invokes the DeleteChangeSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteChangeSetInput object being passed to this operation.
     - Returns: The DeleteChangeSetOutputForDeleteChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidChangeSetStatus.
     */
    func deleteChangeSetSync(
            input: CloudformationModel.DeleteChangeSetInput) throws -> CloudformationModel.DeleteChangeSetOutputForDeleteChangeSet

    /**
     Invokes the DeleteStack operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteStackInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: tokenAlreadyExists.
     */
    func deleteStackAsync(
            input: CloudformationModel.DeleteStackInput, 
            completion: @escaping (CloudformationError?) -> ()) throws

    /**
     Invokes the DeleteStack operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteStackInput object being passed to this operation.
     - Throws: tokenAlreadyExists.
     */
    func deleteStackSync(
            input: CloudformationModel.DeleteStackInput) throws

    /**
     Invokes the DeleteStackInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteStackInstancesInput object being passed to this operation.
         - completion: The DeleteStackInstancesOutputForDeleteStackInstances object or an error will be passed to this 
           callback when the operation is complete. The DeleteStackInstancesOutputForDeleteStackInstances
           object will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationIdAlreadyExists, operationInProgress, stackSetNotFound, staleRequest.
     */
    func deleteStackInstancesAsync(
            input: CloudformationModel.DeleteStackInstancesInput, 
            completion: @escaping (Result<CloudformationModel.DeleteStackInstancesOutputForDeleteStackInstances, CloudformationError>) -> ()) throws

    /**
     Invokes the DeleteStackInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteStackInstancesInput object being passed to this operation.
     - Returns: The DeleteStackInstancesOutputForDeleteStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationIdAlreadyExists, operationInProgress, stackSetNotFound, staleRequest.
     */
    func deleteStackInstancesSync(
            input: CloudformationModel.DeleteStackInstancesInput) throws -> CloudformationModel.DeleteStackInstancesOutputForDeleteStackInstances

    /**
     Invokes the DeleteStackSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteStackSetInput object being passed to this operation.
         - completion: The DeleteStackSetOutputForDeleteStackSet object or an error will be passed to this 
           callback when the operation is complete. The DeleteStackSetOutputForDeleteStackSet
           object will be validated before being returned to caller.
           The possible errors are: operationInProgress, stackSetNotEmpty.
     */
    func deleteStackSetAsync(
            input: CloudformationModel.DeleteStackSetInput, 
            completion: @escaping (Result<CloudformationModel.DeleteStackSetOutputForDeleteStackSet, CloudformationError>) -> ()) throws

    /**
     Invokes the DeleteStackSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteStackSetInput object being passed to this operation.
     - Returns: The DeleteStackSetOutputForDeleteStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationInProgress, stackSetNotEmpty.
     */
    func deleteStackSetSync(
            input: CloudformationModel.DeleteStackSetInput) throws -> CloudformationModel.DeleteStackSetOutputForDeleteStackSet

    /**
     Invokes the DeregisterType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterTypeInput object being passed to this operation.
         - completion: The DeregisterTypeOutputForDeregisterType object or an error will be passed to this 
           callback when the operation is complete. The DeregisterTypeOutputForDeregisterType
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    func deregisterTypeAsync(
            input: CloudformationModel.DeregisterTypeInput, 
            completion: @escaping (Result<CloudformationModel.DeregisterTypeOutputForDeregisterType, CloudformationError>) -> ()) throws

    /**
     Invokes the DeregisterType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterTypeInput object being passed to this operation.
     - Returns: The DeregisterTypeOutputForDeregisterType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func deregisterTypeSync(
            input: CloudformationModel.DeregisterTypeInput) throws -> CloudformationModel.DeregisterTypeOutputForDeregisterType

    /**
     Invokes the DescribeAccountLimits operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAccountLimitsInput object being passed to this operation.
         - completion: The DescribeAccountLimitsOutputForDescribeAccountLimits object or an error will be passed to this 
           callback when the operation is complete. The DescribeAccountLimitsOutputForDescribeAccountLimits
           object will be validated before being returned to caller.
     */
    func describeAccountLimitsAsync(
            input: CloudformationModel.DescribeAccountLimitsInput, 
            completion: @escaping (Result<CloudformationModel.DescribeAccountLimitsOutputForDescribeAccountLimits, CloudformationError>) -> ()) throws

    /**
     Invokes the DescribeAccountLimits operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAccountLimitsInput object being passed to this operation.
     - Returns: The DescribeAccountLimitsOutputForDescribeAccountLimits object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAccountLimitsSync(
            input: CloudformationModel.DescribeAccountLimitsInput) throws -> CloudformationModel.DescribeAccountLimitsOutputForDescribeAccountLimits

    /**
     Invokes the DescribeChangeSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeChangeSetInput object being passed to this operation.
         - completion: The DescribeChangeSetOutputForDescribeChangeSet object or an error will be passed to this 
           callback when the operation is complete. The DescribeChangeSetOutputForDescribeChangeSet
           object will be validated before being returned to caller.
           The possible errors are: changeSetNotFound.
     */
    func describeChangeSetAsync(
            input: CloudformationModel.DescribeChangeSetInput, 
            completion: @escaping (Result<CloudformationModel.DescribeChangeSetOutputForDescribeChangeSet, CloudformationError>) -> ()) throws

    /**
     Invokes the DescribeChangeSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeChangeSetInput object being passed to this operation.
     - Returns: The DescribeChangeSetOutputForDescribeChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound.
     */
    func describeChangeSetSync(
            input: CloudformationModel.DescribeChangeSetInput) throws -> CloudformationModel.DescribeChangeSetOutputForDescribeChangeSet

    /**
     Invokes the DescribeChangeSetHooks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeChangeSetHooksInput object being passed to this operation.
         - completion: The DescribeChangeSetHooksOutputForDescribeChangeSetHooks object or an error will be passed to this 
           callback when the operation is complete. The DescribeChangeSetHooksOutputForDescribeChangeSetHooks
           object will be validated before being returned to caller.
           The possible errors are: changeSetNotFound.
     */
    func describeChangeSetHooksAsync(
            input: CloudformationModel.DescribeChangeSetHooksInput, 
            completion: @escaping (Result<CloudformationModel.DescribeChangeSetHooksOutputForDescribeChangeSetHooks, CloudformationError>) -> ()) throws

    /**
     Invokes the DescribeChangeSetHooks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeChangeSetHooksInput object being passed to this operation.
     - Returns: The DescribeChangeSetHooksOutputForDescribeChangeSetHooks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound.
     */
    func describeChangeSetHooksSync(
            input: CloudformationModel.DescribeChangeSetHooksInput) throws -> CloudformationModel.DescribeChangeSetHooksOutputForDescribeChangeSetHooks

    /**
     Invokes the DescribePublisher operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePublisherInput object being passed to this operation.
         - completion: The DescribePublisherOutputForDescribePublisher object or an error will be passed to this 
           callback when the operation is complete. The DescribePublisherOutputForDescribePublisher
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    func describePublisherAsync(
            input: CloudformationModel.DescribePublisherInput, 
            completion: @escaping (Result<CloudformationModel.DescribePublisherOutputForDescribePublisher, CloudformationError>) -> ()) throws

    /**
     Invokes the DescribePublisher operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePublisherInput object being passed to this operation.
     - Returns: The DescribePublisherOutputForDescribePublisher object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func describePublisherSync(
            input: CloudformationModel.DescribePublisherInput) throws -> CloudformationModel.DescribePublisherOutputForDescribePublisher

    /**
     Invokes the DescribeStackDriftDetectionStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStackDriftDetectionStatusInput object being passed to this operation.
         - completion: The DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus object or an error will be passed to this 
           callback when the operation is complete. The DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus
           object will be validated before being returned to caller.
     */
    func describeStackDriftDetectionStatusAsync(
            input: CloudformationModel.DescribeStackDriftDetectionStatusInput, 
            completion: @escaping (Result<CloudformationModel.DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus, CloudformationError>) -> ()) throws

    /**
     Invokes the DescribeStackDriftDetectionStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStackDriftDetectionStatusInput object being passed to this operation.
     - Returns: The DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStackDriftDetectionStatusSync(
            input: CloudformationModel.DescribeStackDriftDetectionStatusInput) throws -> CloudformationModel.DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus

    /**
     Invokes the DescribeStackEvents operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStackEventsInput object being passed to this operation.
         - completion: The DescribeStackEventsOutputForDescribeStackEvents object or an error will be passed to this 
           callback when the operation is complete. The DescribeStackEventsOutputForDescribeStackEvents
           object will be validated before being returned to caller.
     */
    func describeStackEventsAsync(
            input: CloudformationModel.DescribeStackEventsInput, 
            completion: @escaping (Result<CloudformationModel.DescribeStackEventsOutputForDescribeStackEvents, CloudformationError>) -> ()) throws

    /**
     Invokes the DescribeStackEvents operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStackEventsInput object being passed to this operation.
     - Returns: The DescribeStackEventsOutputForDescribeStackEvents object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStackEventsSync(
            input: CloudformationModel.DescribeStackEventsInput) throws -> CloudformationModel.DescribeStackEventsOutputForDescribeStackEvents

    /**
     Invokes the DescribeStackInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStackInstanceInput object being passed to this operation.
         - completion: The DescribeStackInstanceOutputForDescribeStackInstance object or an error will be passed to this 
           callback when the operation is complete. The DescribeStackInstanceOutputForDescribeStackInstance
           object will be validated before being returned to caller.
           The possible errors are: stackInstanceNotFound, stackSetNotFound.
     */
    func describeStackInstanceAsync(
            input: CloudformationModel.DescribeStackInstanceInput, 
            completion: @escaping (Result<CloudformationModel.DescribeStackInstanceOutputForDescribeStackInstance, CloudformationError>) -> ()) throws

    /**
     Invokes the DescribeStackInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStackInstanceInput object being passed to this operation.
     - Returns: The DescribeStackInstanceOutputForDescribeStackInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackInstanceNotFound, stackSetNotFound.
     */
    func describeStackInstanceSync(
            input: CloudformationModel.DescribeStackInstanceInput) throws -> CloudformationModel.DescribeStackInstanceOutputForDescribeStackInstance

    /**
     Invokes the DescribeStackResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStackResourceInput object being passed to this operation.
         - completion: The DescribeStackResourceOutputForDescribeStackResource object or an error will be passed to this 
           callback when the operation is complete. The DescribeStackResourceOutputForDescribeStackResource
           object will be validated before being returned to caller.
     */
    func describeStackResourceAsync(
            input: CloudformationModel.DescribeStackResourceInput, 
            completion: @escaping (Result<CloudformationModel.DescribeStackResourceOutputForDescribeStackResource, CloudformationError>) -> ()) throws

    /**
     Invokes the DescribeStackResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStackResourceInput object being passed to this operation.
     - Returns: The DescribeStackResourceOutputForDescribeStackResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStackResourceSync(
            input: CloudformationModel.DescribeStackResourceInput) throws -> CloudformationModel.DescribeStackResourceOutputForDescribeStackResource

    /**
     Invokes the DescribeStackResourceDrifts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStackResourceDriftsInput object being passed to this operation.
         - completion: The DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts object or an error will be passed to this 
           callback when the operation is complete. The DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts
           object will be validated before being returned to caller.
     */
    func describeStackResourceDriftsAsync(
            input: CloudformationModel.DescribeStackResourceDriftsInput, 
            completion: @escaping (Result<CloudformationModel.DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts, CloudformationError>) -> ()) throws

    /**
     Invokes the DescribeStackResourceDrifts operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStackResourceDriftsInput object being passed to this operation.
     - Returns: The DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStackResourceDriftsSync(
            input: CloudformationModel.DescribeStackResourceDriftsInput) throws -> CloudformationModel.DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts

    /**
     Invokes the DescribeStackResources operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStackResourcesInput object being passed to this operation.
         - completion: The DescribeStackResourcesOutputForDescribeStackResources object or an error will be passed to this 
           callback when the operation is complete. The DescribeStackResourcesOutputForDescribeStackResources
           object will be validated before being returned to caller.
     */
    func describeStackResourcesAsync(
            input: CloudformationModel.DescribeStackResourcesInput, 
            completion: @escaping (Result<CloudformationModel.DescribeStackResourcesOutputForDescribeStackResources, CloudformationError>) -> ()) throws

    /**
     Invokes the DescribeStackResources operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStackResourcesInput object being passed to this operation.
     - Returns: The DescribeStackResourcesOutputForDescribeStackResources object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStackResourcesSync(
            input: CloudformationModel.DescribeStackResourcesInput) throws -> CloudformationModel.DescribeStackResourcesOutputForDescribeStackResources

    /**
     Invokes the DescribeStackSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStackSetInput object being passed to this operation.
         - completion: The DescribeStackSetOutputForDescribeStackSet object or an error will be passed to this 
           callback when the operation is complete. The DescribeStackSetOutputForDescribeStackSet
           object will be validated before being returned to caller.
           The possible errors are: stackSetNotFound.
     */
    func describeStackSetAsync(
            input: CloudformationModel.DescribeStackSetInput, 
            completion: @escaping (Result<CloudformationModel.DescribeStackSetOutputForDescribeStackSet, CloudformationError>) -> ()) throws

    /**
     Invokes the DescribeStackSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStackSetInput object being passed to this operation.
     - Returns: The DescribeStackSetOutputForDescribeStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    func describeStackSetSync(
            input: CloudformationModel.DescribeStackSetInput) throws -> CloudformationModel.DescribeStackSetOutputForDescribeStackSet

    /**
     Invokes the DescribeStackSetOperation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStackSetOperationInput object being passed to this operation.
         - completion: The DescribeStackSetOperationOutputForDescribeStackSetOperation object or an error will be passed to this 
           callback when the operation is complete. The DescribeStackSetOperationOutputForDescribeStackSetOperation
           object will be validated before being returned to caller.
           The possible errors are: operationNotFound, stackSetNotFound.
     */
    func describeStackSetOperationAsync(
            input: CloudformationModel.DescribeStackSetOperationInput, 
            completion: @escaping (Result<CloudformationModel.DescribeStackSetOperationOutputForDescribeStackSetOperation, CloudformationError>) -> ()) throws

    /**
     Invokes the DescribeStackSetOperation operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStackSetOperationInput object being passed to this operation.
     - Returns: The DescribeStackSetOperationOutputForDescribeStackSetOperation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotFound, stackSetNotFound.
     */
    func describeStackSetOperationSync(
            input: CloudformationModel.DescribeStackSetOperationInput) throws -> CloudformationModel.DescribeStackSetOperationOutputForDescribeStackSetOperation

    /**
     Invokes the DescribeStacks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStacksInput object being passed to this operation.
         - completion: The DescribeStacksOutputForDescribeStacks object or an error will be passed to this 
           callback when the operation is complete. The DescribeStacksOutputForDescribeStacks
           object will be validated before being returned to caller.
     */
    func describeStacksAsync(
            input: CloudformationModel.DescribeStacksInput, 
            completion: @escaping (Result<CloudformationModel.DescribeStacksOutputForDescribeStacks, CloudformationError>) -> ()) throws

    /**
     Invokes the DescribeStacks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStacksInput object being passed to this operation.
     - Returns: The DescribeStacksOutputForDescribeStacks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStacksSync(
            input: CloudformationModel.DescribeStacksInput) throws -> CloudformationModel.DescribeStacksOutputForDescribeStacks

    /**
     Invokes the DescribeType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTypeInput object being passed to this operation.
         - completion: The DescribeTypeOutputForDescribeType object or an error will be passed to this 
           callback when the operation is complete. The DescribeTypeOutputForDescribeType
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    func describeTypeAsync(
            input: CloudformationModel.DescribeTypeInput, 
            completion: @escaping (Result<CloudformationModel.DescribeTypeOutputForDescribeType, CloudformationError>) -> ()) throws

    /**
     Invokes the DescribeType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTypeInput object being passed to this operation.
     - Returns: The DescribeTypeOutputForDescribeType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func describeTypeSync(
            input: CloudformationModel.DescribeTypeInput) throws -> CloudformationModel.DescribeTypeOutputForDescribeType

    /**
     Invokes the DescribeTypeRegistration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTypeRegistrationInput object being passed to this operation.
         - completion: The DescribeTypeRegistrationOutputForDescribeTypeRegistration object or an error will be passed to this 
           callback when the operation is complete. The DescribeTypeRegistrationOutputForDescribeTypeRegistration
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    func describeTypeRegistrationAsync(
            input: CloudformationModel.DescribeTypeRegistrationInput, 
            completion: @escaping (Result<CloudformationModel.DescribeTypeRegistrationOutputForDescribeTypeRegistration, CloudformationError>) -> ()) throws

    /**
     Invokes the DescribeTypeRegistration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTypeRegistrationInput object being passed to this operation.
     - Returns: The DescribeTypeRegistrationOutputForDescribeTypeRegistration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func describeTypeRegistrationSync(
            input: CloudformationModel.DescribeTypeRegistrationInput) throws -> CloudformationModel.DescribeTypeRegistrationOutputForDescribeTypeRegistration

    /**
     Invokes the DetectStackDrift operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetectStackDriftInput object being passed to this operation.
         - completion: The DetectStackDriftOutputForDetectStackDrift object or an error will be passed to this 
           callback when the operation is complete. The DetectStackDriftOutputForDetectStackDrift
           object will be validated before being returned to caller.
     */
    func detectStackDriftAsync(
            input: CloudformationModel.DetectStackDriftInput, 
            completion: @escaping (Result<CloudformationModel.DetectStackDriftOutputForDetectStackDrift, CloudformationError>) -> ()) throws

    /**
     Invokes the DetectStackDrift operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetectStackDriftInput object being passed to this operation.
     - Returns: The DetectStackDriftOutputForDetectStackDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detectStackDriftSync(
            input: CloudformationModel.DetectStackDriftInput) throws -> CloudformationModel.DetectStackDriftOutputForDetectStackDrift

    /**
     Invokes the DetectStackResourceDrift operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetectStackResourceDriftInput object being passed to this operation.
         - completion: The DetectStackResourceDriftOutputForDetectStackResourceDrift object or an error will be passed to this 
           callback when the operation is complete. The DetectStackResourceDriftOutputForDetectStackResourceDrift
           object will be validated before being returned to caller.
     */
    func detectStackResourceDriftAsync(
            input: CloudformationModel.DetectStackResourceDriftInput, 
            completion: @escaping (Result<CloudformationModel.DetectStackResourceDriftOutputForDetectStackResourceDrift, CloudformationError>) -> ()) throws

    /**
     Invokes the DetectStackResourceDrift operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetectStackResourceDriftInput object being passed to this operation.
     - Returns: The DetectStackResourceDriftOutputForDetectStackResourceDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detectStackResourceDriftSync(
            input: CloudformationModel.DetectStackResourceDriftInput) throws -> CloudformationModel.DetectStackResourceDriftOutputForDetectStackResourceDrift

    /**
     Invokes the DetectStackSetDrift operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetectStackSetDriftInput object being passed to this operation.
         - completion: The DetectStackSetDriftOutputForDetectStackSetDrift object or an error will be passed to this 
           callback when the operation is complete. The DetectStackSetDriftOutputForDetectStackSetDrift
           object will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationInProgress, stackSetNotFound.
     */
    func detectStackSetDriftAsync(
            input: CloudformationModel.DetectStackSetDriftInput, 
            completion: @escaping (Result<CloudformationModel.DetectStackSetDriftOutputForDetectStackSetDrift, CloudformationError>) -> ()) throws

    /**
     Invokes the DetectStackSetDrift operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetectStackSetDriftInput object being passed to this operation.
     - Returns: The DetectStackSetDriftOutputForDetectStackSetDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationInProgress, stackSetNotFound.
     */
    func detectStackSetDriftSync(
            input: CloudformationModel.DetectStackSetDriftInput) throws -> CloudformationModel.DetectStackSetDriftOutputForDetectStackSetDrift

    /**
     Invokes the EstimateTemplateCost operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EstimateTemplateCostInput object being passed to this operation.
         - completion: The EstimateTemplateCostOutputForEstimateTemplateCost object or an error will be passed to this 
           callback when the operation is complete. The EstimateTemplateCostOutputForEstimateTemplateCost
           object will be validated before being returned to caller.
     */
    func estimateTemplateCostAsync(
            input: CloudformationModel.EstimateTemplateCostInput, 
            completion: @escaping (Result<CloudformationModel.EstimateTemplateCostOutputForEstimateTemplateCost, CloudformationError>) -> ()) throws

    /**
     Invokes the EstimateTemplateCost operation waiting for the response before returning.

     - Parameters:
         - input: The validated EstimateTemplateCostInput object being passed to this operation.
     - Returns: The EstimateTemplateCostOutputForEstimateTemplateCost object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func estimateTemplateCostSync(
            input: CloudformationModel.EstimateTemplateCostInput) throws -> CloudformationModel.EstimateTemplateCostOutputForEstimateTemplateCost

    /**
     Invokes the ExecuteChangeSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExecuteChangeSetInput object being passed to this operation.
         - completion: The ExecuteChangeSetOutputForExecuteChangeSet object or an error will be passed to this 
           callback when the operation is complete. The ExecuteChangeSetOutputForExecuteChangeSet
           object will be validated before being returned to caller.
           The possible errors are: changeSetNotFound, insufficientCapabilities, invalidChangeSetStatus, tokenAlreadyExists.
     */
    func executeChangeSetAsync(
            input: CloudformationModel.ExecuteChangeSetInput, 
            completion: @escaping (Result<CloudformationModel.ExecuteChangeSetOutputForExecuteChangeSet, CloudformationError>) -> ()) throws

    /**
     Invokes the ExecuteChangeSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExecuteChangeSetInput object being passed to this operation.
     - Returns: The ExecuteChangeSetOutputForExecuteChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound, insufficientCapabilities, invalidChangeSetStatus, tokenAlreadyExists.
     */
    func executeChangeSetSync(
            input: CloudformationModel.ExecuteChangeSetInput) throws -> CloudformationModel.ExecuteChangeSetOutputForExecuteChangeSet

    /**
     Invokes the GetStackPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetStackPolicyInput object being passed to this operation.
         - completion: The GetStackPolicyOutputForGetStackPolicy object or an error will be passed to this 
           callback when the operation is complete. The GetStackPolicyOutputForGetStackPolicy
           object will be validated before being returned to caller.
     */
    func getStackPolicyAsync(
            input: CloudformationModel.GetStackPolicyInput, 
            completion: @escaping (Result<CloudformationModel.GetStackPolicyOutputForGetStackPolicy, CloudformationError>) -> ()) throws

    /**
     Invokes the GetStackPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetStackPolicyInput object being passed to this operation.
     - Returns: The GetStackPolicyOutputForGetStackPolicy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getStackPolicySync(
            input: CloudformationModel.GetStackPolicyInput) throws -> CloudformationModel.GetStackPolicyOutputForGetStackPolicy

    /**
     Invokes the GetTemplate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTemplateInput object being passed to this operation.
         - completion: The GetTemplateOutputForGetTemplate object or an error will be passed to this 
           callback when the operation is complete. The GetTemplateOutputForGetTemplate
           object will be validated before being returned to caller.
           The possible errors are: changeSetNotFound.
     */
    func getTemplateAsync(
            input: CloudformationModel.GetTemplateInput, 
            completion: @escaping (Result<CloudformationModel.GetTemplateOutputForGetTemplate, CloudformationError>) -> ()) throws

    /**
     Invokes the GetTemplate operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTemplateInput object being passed to this operation.
     - Returns: The GetTemplateOutputForGetTemplate object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound.
     */
    func getTemplateSync(
            input: CloudformationModel.GetTemplateInput) throws -> CloudformationModel.GetTemplateOutputForGetTemplate

    /**
     Invokes the GetTemplateSummary operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTemplateSummaryInput object being passed to this operation.
         - completion: The GetTemplateSummaryOutputForGetTemplateSummary object or an error will be passed to this 
           callback when the operation is complete. The GetTemplateSummaryOutputForGetTemplateSummary
           object will be validated before being returned to caller.
           The possible errors are: stackSetNotFound.
     */
    func getTemplateSummaryAsync(
            input: CloudformationModel.GetTemplateSummaryInput, 
            completion: @escaping (Result<CloudformationModel.GetTemplateSummaryOutputForGetTemplateSummary, CloudformationError>) -> ()) throws

    /**
     Invokes the GetTemplateSummary operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTemplateSummaryInput object being passed to this operation.
     - Returns: The GetTemplateSummaryOutputForGetTemplateSummary object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    func getTemplateSummarySync(
            input: CloudformationModel.GetTemplateSummaryInput) throws -> CloudformationModel.GetTemplateSummaryOutputForGetTemplateSummary

    /**
     Invokes the ImportStacksToStackSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportStacksToStackSetInput object being passed to this operation.
         - completion: The ImportStacksToStackSetOutputForImportStacksToStackSet object or an error will be passed to this 
           callback when the operation is complete. The ImportStacksToStackSetOutputForImportStacksToStackSet
           object will be validated before being returned to caller.
           The possible errors are: invalidOperation, limitExceeded, operationIdAlreadyExists, operationInProgress, stackNotFound, stackSetNotFound, staleRequest.
     */
    func importStacksToStackSetAsync(
            input: CloudformationModel.ImportStacksToStackSetInput, 
            completion: @escaping (Result<CloudformationModel.ImportStacksToStackSetOutputForImportStacksToStackSet, CloudformationError>) -> ()) throws

    /**
     Invokes the ImportStacksToStackSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportStacksToStackSetInput object being passed to this operation.
     - Returns: The ImportStacksToStackSetOutputForImportStacksToStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, limitExceeded, operationIdAlreadyExists, operationInProgress, stackNotFound, stackSetNotFound, staleRequest.
     */
    func importStacksToStackSetSync(
            input: CloudformationModel.ImportStacksToStackSetInput) throws -> CloudformationModel.ImportStacksToStackSetOutputForImportStacksToStackSet

    /**
     Invokes the ListChangeSets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListChangeSetsInput object being passed to this operation.
         - completion: The ListChangeSetsOutputForListChangeSets object or an error will be passed to this 
           callback when the operation is complete. The ListChangeSetsOutputForListChangeSets
           object will be validated before being returned to caller.
     */
    func listChangeSetsAsync(
            input: CloudformationModel.ListChangeSetsInput, 
            completion: @escaping (Result<CloudformationModel.ListChangeSetsOutputForListChangeSets, CloudformationError>) -> ()) throws

    /**
     Invokes the ListChangeSets operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListChangeSetsInput object being passed to this operation.
     - Returns: The ListChangeSetsOutputForListChangeSets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listChangeSetsSync(
            input: CloudformationModel.ListChangeSetsInput) throws -> CloudformationModel.ListChangeSetsOutputForListChangeSets

    /**
     Invokes the ListExports operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListExportsInput object being passed to this operation.
         - completion: The ListExportsOutputForListExports object or an error will be passed to this 
           callback when the operation is complete. The ListExportsOutputForListExports
           object will be validated before being returned to caller.
     */
    func listExportsAsync(
            input: CloudformationModel.ListExportsInput, 
            completion: @escaping (Result<CloudformationModel.ListExportsOutputForListExports, CloudformationError>) -> ()) throws

    /**
     Invokes the ListExports operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListExportsInput object being passed to this operation.
     - Returns: The ListExportsOutputForListExports object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listExportsSync(
            input: CloudformationModel.ListExportsInput) throws -> CloudformationModel.ListExportsOutputForListExports

    /**
     Invokes the ListImports operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListImportsInput object being passed to this operation.
         - completion: The ListImportsOutputForListImports object or an error will be passed to this 
           callback when the operation is complete. The ListImportsOutputForListImports
           object will be validated before being returned to caller.
     */
    func listImportsAsync(
            input: CloudformationModel.ListImportsInput, 
            completion: @escaping (Result<CloudformationModel.ListImportsOutputForListImports, CloudformationError>) -> ()) throws

    /**
     Invokes the ListImports operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListImportsInput object being passed to this operation.
     - Returns: The ListImportsOutputForListImports object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listImportsSync(
            input: CloudformationModel.ListImportsInput) throws -> CloudformationModel.ListImportsOutputForListImports

    /**
     Invokes the ListStackInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStackInstancesInput object being passed to this operation.
         - completion: The ListStackInstancesOutputForListStackInstances object or an error will be passed to this 
           callback when the operation is complete. The ListStackInstancesOutputForListStackInstances
           object will be validated before being returned to caller.
           The possible errors are: stackSetNotFound.
     */
    func listStackInstancesAsync(
            input: CloudformationModel.ListStackInstancesInput, 
            completion: @escaping (Result<CloudformationModel.ListStackInstancesOutputForListStackInstances, CloudformationError>) -> ()) throws

    /**
     Invokes the ListStackInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStackInstancesInput object being passed to this operation.
     - Returns: The ListStackInstancesOutputForListStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    func listStackInstancesSync(
            input: CloudformationModel.ListStackInstancesInput) throws -> CloudformationModel.ListStackInstancesOutputForListStackInstances

    /**
     Invokes the ListStackResources operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStackResourcesInput object being passed to this operation.
         - completion: The ListStackResourcesOutputForListStackResources object or an error will be passed to this 
           callback when the operation is complete. The ListStackResourcesOutputForListStackResources
           object will be validated before being returned to caller.
     */
    func listStackResourcesAsync(
            input: CloudformationModel.ListStackResourcesInput, 
            completion: @escaping (Result<CloudformationModel.ListStackResourcesOutputForListStackResources, CloudformationError>) -> ()) throws

    /**
     Invokes the ListStackResources operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStackResourcesInput object being passed to this operation.
     - Returns: The ListStackResourcesOutputForListStackResources object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listStackResourcesSync(
            input: CloudformationModel.ListStackResourcesInput) throws -> CloudformationModel.ListStackResourcesOutputForListStackResources

    /**
     Invokes the ListStackSetOperationResults operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStackSetOperationResultsInput object being passed to this operation.
         - completion: The ListStackSetOperationResultsOutputForListStackSetOperationResults object or an error will be passed to this 
           callback when the operation is complete. The ListStackSetOperationResultsOutputForListStackSetOperationResults
           object will be validated before being returned to caller.
           The possible errors are: operationNotFound, stackSetNotFound.
     */
    func listStackSetOperationResultsAsync(
            input: CloudformationModel.ListStackSetOperationResultsInput, 
            completion: @escaping (Result<CloudformationModel.ListStackSetOperationResultsOutputForListStackSetOperationResults, CloudformationError>) -> ()) throws

    /**
     Invokes the ListStackSetOperationResults operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStackSetOperationResultsInput object being passed to this operation.
     - Returns: The ListStackSetOperationResultsOutputForListStackSetOperationResults object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotFound, stackSetNotFound.
     */
    func listStackSetOperationResultsSync(
            input: CloudformationModel.ListStackSetOperationResultsInput) throws -> CloudformationModel.ListStackSetOperationResultsOutputForListStackSetOperationResults

    /**
     Invokes the ListStackSetOperations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStackSetOperationsInput object being passed to this operation.
         - completion: The ListStackSetOperationsOutputForListStackSetOperations object or an error will be passed to this 
           callback when the operation is complete. The ListStackSetOperationsOutputForListStackSetOperations
           object will be validated before being returned to caller.
           The possible errors are: stackSetNotFound.
     */
    func listStackSetOperationsAsync(
            input: CloudformationModel.ListStackSetOperationsInput, 
            completion: @escaping (Result<CloudformationModel.ListStackSetOperationsOutputForListStackSetOperations, CloudformationError>) -> ()) throws

    /**
     Invokes the ListStackSetOperations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStackSetOperationsInput object being passed to this operation.
     - Returns: The ListStackSetOperationsOutputForListStackSetOperations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    func listStackSetOperationsSync(
            input: CloudformationModel.ListStackSetOperationsInput) throws -> CloudformationModel.ListStackSetOperationsOutputForListStackSetOperations

    /**
     Invokes the ListStackSets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStackSetsInput object being passed to this operation.
         - completion: The ListStackSetsOutputForListStackSets object or an error will be passed to this 
           callback when the operation is complete. The ListStackSetsOutputForListStackSets
           object will be validated before being returned to caller.
     */
    func listStackSetsAsync(
            input: CloudformationModel.ListStackSetsInput, 
            completion: @escaping (Result<CloudformationModel.ListStackSetsOutputForListStackSets, CloudformationError>) -> ()) throws

    /**
     Invokes the ListStackSets operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStackSetsInput object being passed to this operation.
     - Returns: The ListStackSetsOutputForListStackSets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listStackSetsSync(
            input: CloudformationModel.ListStackSetsInput) throws -> CloudformationModel.ListStackSetsOutputForListStackSets

    /**
     Invokes the ListStacks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStacksInput object being passed to this operation.
         - completion: The ListStacksOutputForListStacks object or an error will be passed to this 
           callback when the operation is complete. The ListStacksOutputForListStacks
           object will be validated before being returned to caller.
     */
    func listStacksAsync(
            input: CloudformationModel.ListStacksInput, 
            completion: @escaping (Result<CloudformationModel.ListStacksOutputForListStacks, CloudformationError>) -> ()) throws

    /**
     Invokes the ListStacks operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStacksInput object being passed to this operation.
     - Returns: The ListStacksOutputForListStacks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listStacksSync(
            input: CloudformationModel.ListStacksInput) throws -> CloudformationModel.ListStacksOutputForListStacks

    /**
     Invokes the ListTypeRegistrations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTypeRegistrationsInput object being passed to this operation.
         - completion: The ListTypeRegistrationsOutputForListTypeRegistrations object or an error will be passed to this 
           callback when the operation is complete. The ListTypeRegistrationsOutputForListTypeRegistrations
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    func listTypeRegistrationsAsync(
            input: CloudformationModel.ListTypeRegistrationsInput, 
            completion: @escaping (Result<CloudformationModel.ListTypeRegistrationsOutputForListTypeRegistrations, CloudformationError>) -> ()) throws

    /**
     Invokes the ListTypeRegistrations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTypeRegistrationsInput object being passed to this operation.
     - Returns: The ListTypeRegistrationsOutputForListTypeRegistrations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func listTypeRegistrationsSync(
            input: CloudformationModel.ListTypeRegistrationsInput) throws -> CloudformationModel.ListTypeRegistrationsOutputForListTypeRegistrations

    /**
     Invokes the ListTypeVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTypeVersionsInput object being passed to this operation.
         - completion: The ListTypeVersionsOutputForListTypeVersions object or an error will be passed to this 
           callback when the operation is complete. The ListTypeVersionsOutputForListTypeVersions
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    func listTypeVersionsAsync(
            input: CloudformationModel.ListTypeVersionsInput, 
            completion: @escaping (Result<CloudformationModel.ListTypeVersionsOutputForListTypeVersions, CloudformationError>) -> ()) throws

    /**
     Invokes the ListTypeVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTypeVersionsInput object being passed to this operation.
     - Returns: The ListTypeVersionsOutputForListTypeVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func listTypeVersionsSync(
            input: CloudformationModel.ListTypeVersionsInput) throws -> CloudformationModel.ListTypeVersionsOutputForListTypeVersions

    /**
     Invokes the ListTypes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTypesInput object being passed to this operation.
         - completion: The ListTypesOutputForListTypes object or an error will be passed to this 
           callback when the operation is complete. The ListTypesOutputForListTypes
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    func listTypesAsync(
            input: CloudformationModel.ListTypesInput, 
            completion: @escaping (Result<CloudformationModel.ListTypesOutputForListTypes, CloudformationError>) -> ()) throws

    /**
     Invokes the ListTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTypesInput object being passed to this operation.
     - Returns: The ListTypesOutputForListTypes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func listTypesSync(
            input: CloudformationModel.ListTypesInput) throws -> CloudformationModel.ListTypesOutputForListTypes

    /**
     Invokes the PublishType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PublishTypeInput object being passed to this operation.
         - completion: The PublishTypeOutputForPublishType object or an error will be passed to this 
           callback when the operation is complete. The PublishTypeOutputForPublishType
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    func publishTypeAsync(
            input: CloudformationModel.PublishTypeInput, 
            completion: @escaping (Result<CloudformationModel.PublishTypeOutputForPublishType, CloudformationError>) -> ()) throws

    /**
     Invokes the PublishType operation waiting for the response before returning.

     - Parameters:
         - input: The validated PublishTypeInput object being passed to this operation.
     - Returns: The PublishTypeOutputForPublishType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func publishTypeSync(
            input: CloudformationModel.PublishTypeInput) throws -> CloudformationModel.PublishTypeOutputForPublishType

    /**
     Invokes the RecordHandlerProgress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RecordHandlerProgressInput object being passed to this operation.
         - completion: The RecordHandlerProgressOutputForRecordHandlerProgress object or an error will be passed to this 
           callback when the operation is complete. The RecordHandlerProgressOutputForRecordHandlerProgress
           object will be validated before being returned to caller.
           The possible errors are: invalidStateTransition, operationStatusCheckFailed.
     */
    func recordHandlerProgressAsync(
            input: CloudformationModel.RecordHandlerProgressInput, 
            completion: @escaping (Result<CloudformationModel.RecordHandlerProgressOutputForRecordHandlerProgress, CloudformationError>) -> ()) throws

    /**
     Invokes the RecordHandlerProgress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RecordHandlerProgressInput object being passed to this operation.
     - Returns: The RecordHandlerProgressOutputForRecordHandlerProgress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidStateTransition, operationStatusCheckFailed.
     */
    func recordHandlerProgressSync(
            input: CloudformationModel.RecordHandlerProgressInput) throws -> CloudformationModel.RecordHandlerProgressOutputForRecordHandlerProgress

    /**
     Invokes the RegisterPublisher operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterPublisherInput object being passed to this operation.
         - completion: The RegisterPublisherOutputForRegisterPublisher object or an error will be passed to this 
           callback when the operation is complete. The RegisterPublisherOutputForRegisterPublisher
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    func registerPublisherAsync(
            input: CloudformationModel.RegisterPublisherInput, 
            completion: @escaping (Result<CloudformationModel.RegisterPublisherOutputForRegisterPublisher, CloudformationError>) -> ()) throws

    /**
     Invokes the RegisterPublisher operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterPublisherInput object being passed to this operation.
     - Returns: The RegisterPublisherOutputForRegisterPublisher object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func registerPublisherSync(
            input: CloudformationModel.RegisterPublisherInput) throws -> CloudformationModel.RegisterPublisherOutputForRegisterPublisher

    /**
     Invokes the RegisterType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterTypeInput object being passed to this operation.
         - completion: The RegisterTypeOutputForRegisterType object or an error will be passed to this 
           callback when the operation is complete. The RegisterTypeOutputForRegisterType
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    func registerTypeAsync(
            input: CloudformationModel.RegisterTypeInput, 
            completion: @escaping (Result<CloudformationModel.RegisterTypeOutputForRegisterType, CloudformationError>) -> ()) throws

    /**
     Invokes the RegisterType operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterTypeInput object being passed to this operation.
     - Returns: The RegisterTypeOutputForRegisterType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func registerTypeSync(
            input: CloudformationModel.RegisterTypeInput) throws -> CloudformationModel.RegisterTypeOutputForRegisterType

    /**
     Invokes the RollbackStack operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RollbackStackInput object being passed to this operation.
         - completion: The RollbackStackOutputForRollbackStack object or an error will be passed to this 
           callback when the operation is complete. The RollbackStackOutputForRollbackStack
           object will be validated before being returned to caller.
           The possible errors are: tokenAlreadyExists.
     */
    func rollbackStackAsync(
            input: CloudformationModel.RollbackStackInput, 
            completion: @escaping (Result<CloudformationModel.RollbackStackOutputForRollbackStack, CloudformationError>) -> ()) throws

    /**
     Invokes the RollbackStack operation waiting for the response before returning.

     - Parameters:
         - input: The validated RollbackStackInput object being passed to this operation.
     - Returns: The RollbackStackOutputForRollbackStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: tokenAlreadyExists.
     */
    func rollbackStackSync(
            input: CloudformationModel.RollbackStackInput) throws -> CloudformationModel.RollbackStackOutputForRollbackStack

    /**
     Invokes the SetStackPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetStackPolicyInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func setStackPolicyAsync(
            input: CloudformationModel.SetStackPolicyInput, 
            completion: @escaping (CloudformationError?) -> ()) throws

    /**
     Invokes the SetStackPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetStackPolicyInput object being passed to this operation.
     */
    func setStackPolicySync(
            input: CloudformationModel.SetStackPolicyInput) throws

    /**
     Invokes the SetTypeConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetTypeConfigurationInput object being passed to this operation.
         - completion: The SetTypeConfigurationOutputForSetTypeConfiguration object or an error will be passed to this 
           callback when the operation is complete. The SetTypeConfigurationOutputForSetTypeConfiguration
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    func setTypeConfigurationAsync(
            input: CloudformationModel.SetTypeConfigurationInput, 
            completion: @escaping (Result<CloudformationModel.SetTypeConfigurationOutputForSetTypeConfiguration, CloudformationError>) -> ()) throws

    /**
     Invokes the SetTypeConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetTypeConfigurationInput object being passed to this operation.
     - Returns: The SetTypeConfigurationOutputForSetTypeConfiguration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func setTypeConfigurationSync(
            input: CloudformationModel.SetTypeConfigurationInput) throws -> CloudformationModel.SetTypeConfigurationOutputForSetTypeConfiguration

    /**
     Invokes the SetTypeDefaultVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetTypeDefaultVersionInput object being passed to this operation.
         - completion: The SetTypeDefaultVersionOutputForSetTypeDefaultVersion object or an error will be passed to this 
           callback when the operation is complete. The SetTypeDefaultVersionOutputForSetTypeDefaultVersion
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    func setTypeDefaultVersionAsync(
            input: CloudformationModel.SetTypeDefaultVersionInput, 
            completion: @escaping (Result<CloudformationModel.SetTypeDefaultVersionOutputForSetTypeDefaultVersion, CloudformationError>) -> ()) throws

    /**
     Invokes the SetTypeDefaultVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetTypeDefaultVersionInput object being passed to this operation.
     - Returns: The SetTypeDefaultVersionOutputForSetTypeDefaultVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func setTypeDefaultVersionSync(
            input: CloudformationModel.SetTypeDefaultVersionInput) throws -> CloudformationModel.SetTypeDefaultVersionOutputForSetTypeDefaultVersion

    /**
     Invokes the SignalResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SignalResourceInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func signalResourceAsync(
            input: CloudformationModel.SignalResourceInput, 
            completion: @escaping (CloudformationError?) -> ()) throws

    /**
     Invokes the SignalResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated SignalResourceInput object being passed to this operation.
     */
    func signalResourceSync(
            input: CloudformationModel.SignalResourceInput) throws

    /**
     Invokes the StopStackSetOperation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopStackSetOperationInput object being passed to this operation.
         - completion: The StopStackSetOperationOutputForStopStackSetOperation object or an error will be passed to this 
           callback when the operation is complete. The StopStackSetOperationOutputForStopStackSetOperation
           object will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationNotFound, stackSetNotFound.
     */
    func stopStackSetOperationAsync(
            input: CloudformationModel.StopStackSetOperationInput, 
            completion: @escaping (Result<CloudformationModel.StopStackSetOperationOutputForStopStackSetOperation, CloudformationError>) -> ()) throws

    /**
     Invokes the StopStackSetOperation operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopStackSetOperationInput object being passed to this operation.
     - Returns: The StopStackSetOperationOutputForStopStackSetOperation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationNotFound, stackSetNotFound.
     */
    func stopStackSetOperationSync(
            input: CloudformationModel.StopStackSetOperationInput) throws -> CloudformationModel.StopStackSetOperationOutputForStopStackSetOperation

    /**
     Invokes the TestType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TestTypeInput object being passed to this operation.
         - completion: The TestTypeOutputForTestType object or an error will be passed to this 
           callback when the operation is complete. The TestTypeOutputForTestType
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    func testTypeAsync(
            input: CloudformationModel.TestTypeInput, 
            completion: @escaping (Result<CloudformationModel.TestTypeOutputForTestType, CloudformationError>) -> ()) throws

    /**
     Invokes the TestType operation waiting for the response before returning.

     - Parameters:
         - input: The validated TestTypeInput object being passed to this operation.
     - Returns: The TestTypeOutputForTestType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func testTypeSync(
            input: CloudformationModel.TestTypeInput) throws -> CloudformationModel.TestTypeOutputForTestType

    /**
     Invokes the UpdateStack operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateStackInput object being passed to this operation.
         - completion: The UpdateStackOutputForUpdateStack object or an error will be passed to this 
           callback when the operation is complete. The UpdateStackOutputForUpdateStack
           object will be validated before being returned to caller.
           The possible errors are: insufficientCapabilities, tokenAlreadyExists.
     */
    func updateStackAsync(
            input: CloudformationModel.UpdateStackInput, 
            completion: @escaping (Result<CloudformationModel.UpdateStackOutputForUpdateStack, CloudformationError>) -> ()) throws

    /**
     Invokes the UpdateStack operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateStackInput object being passed to this operation.
     - Returns: The UpdateStackOutputForUpdateStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: insufficientCapabilities, tokenAlreadyExists.
     */
    func updateStackSync(
            input: CloudformationModel.UpdateStackInput) throws -> CloudformationModel.UpdateStackOutputForUpdateStack

    /**
     Invokes the UpdateStackInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateStackInstancesInput object being passed to this operation.
         - completion: The UpdateStackInstancesOutputForUpdateStackInstances object or an error will be passed to this 
           callback when the operation is complete. The UpdateStackInstancesOutputForUpdateStackInstances
           object will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationIdAlreadyExists, operationInProgress, stackInstanceNotFound, stackSetNotFound, staleRequest.
     */
    func updateStackInstancesAsync(
            input: CloudformationModel.UpdateStackInstancesInput, 
            completion: @escaping (Result<CloudformationModel.UpdateStackInstancesOutputForUpdateStackInstances, CloudformationError>) -> ()) throws

    /**
     Invokes the UpdateStackInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateStackInstancesInput object being passed to this operation.
     - Returns: The UpdateStackInstancesOutputForUpdateStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationIdAlreadyExists, operationInProgress, stackInstanceNotFound, stackSetNotFound, staleRequest.
     */
    func updateStackInstancesSync(
            input: CloudformationModel.UpdateStackInstancesInput) throws -> CloudformationModel.UpdateStackInstancesOutputForUpdateStackInstances

    /**
     Invokes the UpdateStackSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateStackSetInput object being passed to this operation.
         - completion: The UpdateStackSetOutputForUpdateStackSet object or an error will be passed to this 
           callback when the operation is complete. The UpdateStackSetOutputForUpdateStackSet
           object will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationIdAlreadyExists, operationInProgress, stackInstanceNotFound, stackSetNotFound, staleRequest.
     */
    func updateStackSetAsync(
            input: CloudformationModel.UpdateStackSetInput, 
            completion: @escaping (Result<CloudformationModel.UpdateStackSetOutputForUpdateStackSet, CloudformationError>) -> ()) throws

    /**
     Invokes the UpdateStackSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateStackSetInput object being passed to this operation.
     - Returns: The UpdateStackSetOutputForUpdateStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationIdAlreadyExists, operationInProgress, stackInstanceNotFound, stackSetNotFound, staleRequest.
     */
    func updateStackSetSync(
            input: CloudformationModel.UpdateStackSetInput) throws -> CloudformationModel.UpdateStackSetOutputForUpdateStackSet

    /**
     Invokes the UpdateTerminationProtection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateTerminationProtectionInput object being passed to this operation.
         - completion: The UpdateTerminationProtectionOutputForUpdateTerminationProtection object or an error will be passed to this 
           callback when the operation is complete. The UpdateTerminationProtectionOutputForUpdateTerminationProtection
           object will be validated before being returned to caller.
     */
    func updateTerminationProtectionAsync(
            input: CloudformationModel.UpdateTerminationProtectionInput, 
            completion: @escaping (Result<CloudformationModel.UpdateTerminationProtectionOutputForUpdateTerminationProtection, CloudformationError>) -> ()) throws

    /**
     Invokes the UpdateTerminationProtection operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateTerminationProtectionInput object being passed to this operation.
     - Returns: The UpdateTerminationProtectionOutputForUpdateTerminationProtection object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func updateTerminationProtectionSync(
            input: CloudformationModel.UpdateTerminationProtectionInput) throws -> CloudformationModel.UpdateTerminationProtectionOutputForUpdateTerminationProtection

    /**
     Invokes the ValidateTemplate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ValidateTemplateInput object being passed to this operation.
         - completion: The ValidateTemplateOutputForValidateTemplate object or an error will be passed to this 
           callback when the operation is complete. The ValidateTemplateOutputForValidateTemplate
           object will be validated before being returned to caller.
     */
    func validateTemplateAsync(
            input: CloudformationModel.ValidateTemplateInput, 
            completion: @escaping (Result<CloudformationModel.ValidateTemplateOutputForValidateTemplate, CloudformationError>) -> ()) throws

    /**
     Invokes the ValidateTemplate operation waiting for the response before returning.

     - Parameters:
         - input: The validated ValidateTemplateInput object being passed to this operation.
     - Returns: The ValidateTemplateOutputForValidateTemplate object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func validateTemplateSync(
            input: CloudformationModel.ValidateTemplateInput) throws -> CloudformationModel.ValidateTemplateOutputForValidateTemplate
}
