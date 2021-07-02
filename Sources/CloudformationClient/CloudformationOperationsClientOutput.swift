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
// CloudformationOperationsClientOutput.swift
// CloudformationClient
//

import Foundation
import SmokeHTTPClient
import CloudformationModel

/**
 Type to handle the output from the ActivateType operation in a HTTP client.
 */
extension ActivateTypeOutputForActivateType: HTTPResponseOutputProtocol {
    public typealias BodyType = ActivateTypeOutputForActivateType
    public typealias HeadersType = ActivateTypeOutputForActivateType

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ActivateTypeOutputForActivateType {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the BatchDescribeTypeConfigurations operation in a HTTP client.
 */
extension BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations: HTTPResponseOutputProtocol {
    public typealias BodyType = BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations
    public typealias HeadersType = BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ContinueUpdateRollback operation in a HTTP client.
 */
extension ContinueUpdateRollbackOutputForContinueUpdateRollback: HTTPResponseOutputProtocol {
    public typealias BodyType = ContinueUpdateRollbackOutputForContinueUpdateRollback
    public typealias HeadersType = ContinueUpdateRollbackOutputForContinueUpdateRollback

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ContinueUpdateRollbackOutputForContinueUpdateRollback {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateChangeSet operation in a HTTP client.
 */
extension CreateChangeSetOutputForCreateChangeSet: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateChangeSetOutputForCreateChangeSet
    public typealias HeadersType = CreateChangeSetOutputForCreateChangeSet

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateChangeSetOutputForCreateChangeSet {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateStack operation in a HTTP client.
 */
extension CreateStackOutputForCreateStack: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateStackOutputForCreateStack
    public typealias HeadersType = CreateStackOutputForCreateStack

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateStackOutputForCreateStack {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateStackInstances operation in a HTTP client.
 */
extension CreateStackInstancesOutputForCreateStackInstances: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateStackInstancesOutputForCreateStackInstances
    public typealias HeadersType = CreateStackInstancesOutputForCreateStackInstances

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateStackInstancesOutputForCreateStackInstances {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateStackSet operation in a HTTP client.
 */
extension CreateStackSetOutputForCreateStackSet: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateStackSetOutputForCreateStackSet
    public typealias HeadersType = CreateStackSetOutputForCreateStackSet

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateStackSetOutputForCreateStackSet {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeactivateType operation in a HTTP client.
 */
extension DeactivateTypeOutputForDeactivateType: HTTPResponseOutputProtocol {
    public typealias BodyType = DeactivateTypeOutputForDeactivateType
    public typealias HeadersType = DeactivateTypeOutputForDeactivateType

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeactivateTypeOutputForDeactivateType {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteChangeSet operation in a HTTP client.
 */
extension DeleteChangeSetOutputForDeleteChangeSet: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteChangeSetOutputForDeleteChangeSet
    public typealias HeadersType = DeleteChangeSetOutputForDeleteChangeSet

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteChangeSetOutputForDeleteChangeSet {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteStackInstances operation in a HTTP client.
 */
extension DeleteStackInstancesOutputForDeleteStackInstances: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteStackInstancesOutputForDeleteStackInstances
    public typealias HeadersType = DeleteStackInstancesOutputForDeleteStackInstances

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteStackInstancesOutputForDeleteStackInstances {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteStackSet operation in a HTTP client.
 */
extension DeleteStackSetOutputForDeleteStackSet: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteStackSetOutputForDeleteStackSet
    public typealias HeadersType = DeleteStackSetOutputForDeleteStackSet

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteStackSetOutputForDeleteStackSet {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeregisterType operation in a HTTP client.
 */
extension DeregisterTypeOutputForDeregisterType: HTTPResponseOutputProtocol {
    public typealias BodyType = DeregisterTypeOutputForDeregisterType
    public typealias HeadersType = DeregisterTypeOutputForDeregisterType

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeregisterTypeOutputForDeregisterType {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeAccountLimits operation in a HTTP client.
 */
extension DescribeAccountLimitsOutputForDescribeAccountLimits: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeAccountLimitsOutputForDescribeAccountLimits
    public typealias HeadersType = DescribeAccountLimitsOutputForDescribeAccountLimits

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeAccountLimitsOutputForDescribeAccountLimits {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeChangeSet operation in a HTTP client.
 */
extension DescribeChangeSetOutputForDescribeChangeSet: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeChangeSetOutputForDescribeChangeSet
    public typealias HeadersType = DescribeChangeSetOutputForDescribeChangeSet

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeChangeSetOutputForDescribeChangeSet {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribePublisher operation in a HTTP client.
 */
extension DescribePublisherOutputForDescribePublisher: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribePublisherOutputForDescribePublisher
    public typealias HeadersType = DescribePublisherOutputForDescribePublisher

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribePublisherOutputForDescribePublisher {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeStackDriftDetectionStatus operation in a HTTP client.
 */
extension DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus
    public typealias HeadersType = DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeStackEvents operation in a HTTP client.
 */
extension DescribeStackEventsOutputForDescribeStackEvents: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeStackEventsOutputForDescribeStackEvents
    public typealias HeadersType = DescribeStackEventsOutputForDescribeStackEvents

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeStackEventsOutputForDescribeStackEvents {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeStackInstance operation in a HTTP client.
 */
extension DescribeStackInstanceOutputForDescribeStackInstance: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeStackInstanceOutputForDescribeStackInstance
    public typealias HeadersType = DescribeStackInstanceOutputForDescribeStackInstance

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeStackInstanceOutputForDescribeStackInstance {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeStackResource operation in a HTTP client.
 */
extension DescribeStackResourceOutputForDescribeStackResource: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeStackResourceOutputForDescribeStackResource
    public typealias HeadersType = DescribeStackResourceOutputForDescribeStackResource

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeStackResourceOutputForDescribeStackResource {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeStackResourceDrifts operation in a HTTP client.
 */
extension DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts
    public typealias HeadersType = DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeStackResources operation in a HTTP client.
 */
extension DescribeStackResourcesOutputForDescribeStackResources: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeStackResourcesOutputForDescribeStackResources
    public typealias HeadersType = DescribeStackResourcesOutputForDescribeStackResources

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeStackResourcesOutputForDescribeStackResources {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeStackSet operation in a HTTP client.
 */
extension DescribeStackSetOutputForDescribeStackSet: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeStackSetOutputForDescribeStackSet
    public typealias HeadersType = DescribeStackSetOutputForDescribeStackSet

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeStackSetOutputForDescribeStackSet {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeStackSetOperation operation in a HTTP client.
 */
extension DescribeStackSetOperationOutputForDescribeStackSetOperation: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeStackSetOperationOutputForDescribeStackSetOperation
    public typealias HeadersType = DescribeStackSetOperationOutputForDescribeStackSetOperation

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeStackSetOperationOutputForDescribeStackSetOperation {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeStacks operation in a HTTP client.
 */
extension DescribeStacksOutputForDescribeStacks: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeStacksOutputForDescribeStacks
    public typealias HeadersType = DescribeStacksOutputForDescribeStacks

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeStacksOutputForDescribeStacks {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeType operation in a HTTP client.
 */
extension DescribeTypeOutputForDescribeType: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeTypeOutputForDescribeType
    public typealias HeadersType = DescribeTypeOutputForDescribeType

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeTypeOutputForDescribeType {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeTypeRegistration operation in a HTTP client.
 */
extension DescribeTypeRegistrationOutputForDescribeTypeRegistration: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeTypeRegistrationOutputForDescribeTypeRegistration
    public typealias HeadersType = DescribeTypeRegistrationOutputForDescribeTypeRegistration

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeTypeRegistrationOutputForDescribeTypeRegistration {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DetectStackDrift operation in a HTTP client.
 */
extension DetectStackDriftOutputForDetectStackDrift: HTTPResponseOutputProtocol {
    public typealias BodyType = DetectStackDriftOutputForDetectStackDrift
    public typealias HeadersType = DetectStackDriftOutputForDetectStackDrift

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DetectStackDriftOutputForDetectStackDrift {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DetectStackResourceDrift operation in a HTTP client.
 */
extension DetectStackResourceDriftOutputForDetectStackResourceDrift: HTTPResponseOutputProtocol {
    public typealias BodyType = DetectStackResourceDriftOutputForDetectStackResourceDrift
    public typealias HeadersType = DetectStackResourceDriftOutputForDetectStackResourceDrift

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DetectStackResourceDriftOutputForDetectStackResourceDrift {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DetectStackSetDrift operation in a HTTP client.
 */
extension DetectStackSetDriftOutputForDetectStackSetDrift: HTTPResponseOutputProtocol {
    public typealias BodyType = DetectStackSetDriftOutputForDetectStackSetDrift
    public typealias HeadersType = DetectStackSetDriftOutputForDetectStackSetDrift

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DetectStackSetDriftOutputForDetectStackSetDrift {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the EstimateTemplateCost operation in a HTTP client.
 */
extension EstimateTemplateCostOutputForEstimateTemplateCost: HTTPResponseOutputProtocol {
    public typealias BodyType = EstimateTemplateCostOutputForEstimateTemplateCost
    public typealias HeadersType = EstimateTemplateCostOutputForEstimateTemplateCost

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> EstimateTemplateCostOutputForEstimateTemplateCost {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ExecuteChangeSet operation in a HTTP client.
 */
extension ExecuteChangeSetOutputForExecuteChangeSet: HTTPResponseOutputProtocol {
    public typealias BodyType = ExecuteChangeSetOutputForExecuteChangeSet
    public typealias HeadersType = ExecuteChangeSetOutputForExecuteChangeSet

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ExecuteChangeSetOutputForExecuteChangeSet {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetStackPolicy operation in a HTTP client.
 */
extension GetStackPolicyOutputForGetStackPolicy: HTTPResponseOutputProtocol {
    public typealias BodyType = GetStackPolicyOutputForGetStackPolicy
    public typealias HeadersType = GetStackPolicyOutputForGetStackPolicy

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetStackPolicyOutputForGetStackPolicy {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetTemplate operation in a HTTP client.
 */
extension GetTemplateOutputForGetTemplate: HTTPResponseOutputProtocol {
    public typealias BodyType = GetTemplateOutputForGetTemplate
    public typealias HeadersType = GetTemplateOutputForGetTemplate

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetTemplateOutputForGetTemplate {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetTemplateSummary operation in a HTTP client.
 */
extension GetTemplateSummaryOutputForGetTemplateSummary: HTTPResponseOutputProtocol {
    public typealias BodyType = GetTemplateSummaryOutputForGetTemplateSummary
    public typealias HeadersType = GetTemplateSummaryOutputForGetTemplateSummary

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetTemplateSummaryOutputForGetTemplateSummary {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListChangeSets operation in a HTTP client.
 */
extension ListChangeSetsOutputForListChangeSets: HTTPResponseOutputProtocol {
    public typealias BodyType = ListChangeSetsOutputForListChangeSets
    public typealias HeadersType = ListChangeSetsOutputForListChangeSets

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListChangeSetsOutputForListChangeSets {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListExports operation in a HTTP client.
 */
extension ListExportsOutputForListExports: HTTPResponseOutputProtocol {
    public typealias BodyType = ListExportsOutputForListExports
    public typealias HeadersType = ListExportsOutputForListExports

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListExportsOutputForListExports {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListImports operation in a HTTP client.
 */
extension ListImportsOutputForListImports: HTTPResponseOutputProtocol {
    public typealias BodyType = ListImportsOutputForListImports
    public typealias HeadersType = ListImportsOutputForListImports

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListImportsOutputForListImports {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListStackInstances operation in a HTTP client.
 */
extension ListStackInstancesOutputForListStackInstances: HTTPResponseOutputProtocol {
    public typealias BodyType = ListStackInstancesOutputForListStackInstances
    public typealias HeadersType = ListStackInstancesOutputForListStackInstances

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListStackInstancesOutputForListStackInstances {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListStackResources operation in a HTTP client.
 */
extension ListStackResourcesOutputForListStackResources: HTTPResponseOutputProtocol {
    public typealias BodyType = ListStackResourcesOutputForListStackResources
    public typealias HeadersType = ListStackResourcesOutputForListStackResources

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListStackResourcesOutputForListStackResources {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListStackSetOperationResults operation in a HTTP client.
 */
extension ListStackSetOperationResultsOutputForListStackSetOperationResults: HTTPResponseOutputProtocol {
    public typealias BodyType = ListStackSetOperationResultsOutputForListStackSetOperationResults
    public typealias HeadersType = ListStackSetOperationResultsOutputForListStackSetOperationResults

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListStackSetOperationResultsOutputForListStackSetOperationResults {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListStackSetOperations operation in a HTTP client.
 */
extension ListStackSetOperationsOutputForListStackSetOperations: HTTPResponseOutputProtocol {
    public typealias BodyType = ListStackSetOperationsOutputForListStackSetOperations
    public typealias HeadersType = ListStackSetOperationsOutputForListStackSetOperations

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListStackSetOperationsOutputForListStackSetOperations {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListStackSets operation in a HTTP client.
 */
extension ListStackSetsOutputForListStackSets: HTTPResponseOutputProtocol {
    public typealias BodyType = ListStackSetsOutputForListStackSets
    public typealias HeadersType = ListStackSetsOutputForListStackSets

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListStackSetsOutputForListStackSets {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListStacks operation in a HTTP client.
 */
extension ListStacksOutputForListStacks: HTTPResponseOutputProtocol {
    public typealias BodyType = ListStacksOutputForListStacks
    public typealias HeadersType = ListStacksOutputForListStacks

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListStacksOutputForListStacks {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListTypeRegistrations operation in a HTTP client.
 */
extension ListTypeRegistrationsOutputForListTypeRegistrations: HTTPResponseOutputProtocol {
    public typealias BodyType = ListTypeRegistrationsOutputForListTypeRegistrations
    public typealias HeadersType = ListTypeRegistrationsOutputForListTypeRegistrations

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListTypeRegistrationsOutputForListTypeRegistrations {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListTypeVersions operation in a HTTP client.
 */
extension ListTypeVersionsOutputForListTypeVersions: HTTPResponseOutputProtocol {
    public typealias BodyType = ListTypeVersionsOutputForListTypeVersions
    public typealias HeadersType = ListTypeVersionsOutputForListTypeVersions

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListTypeVersionsOutputForListTypeVersions {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListTypes operation in a HTTP client.
 */
extension ListTypesOutputForListTypes: HTTPResponseOutputProtocol {
    public typealias BodyType = ListTypesOutputForListTypes
    public typealias HeadersType = ListTypesOutputForListTypes

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListTypesOutputForListTypes {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PublishType operation in a HTTP client.
 */
extension PublishTypeOutputForPublishType: HTTPResponseOutputProtocol {
    public typealias BodyType = PublishTypeOutputForPublishType
    public typealias HeadersType = PublishTypeOutputForPublishType

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PublishTypeOutputForPublishType {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RecordHandlerProgress operation in a HTTP client.
 */
extension RecordHandlerProgressOutputForRecordHandlerProgress: HTTPResponseOutputProtocol {
    public typealias BodyType = RecordHandlerProgressOutputForRecordHandlerProgress
    public typealias HeadersType = RecordHandlerProgressOutputForRecordHandlerProgress

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RecordHandlerProgressOutputForRecordHandlerProgress {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RegisterPublisher operation in a HTTP client.
 */
extension RegisterPublisherOutputForRegisterPublisher: HTTPResponseOutputProtocol {
    public typealias BodyType = RegisterPublisherOutputForRegisterPublisher
    public typealias HeadersType = RegisterPublisherOutputForRegisterPublisher

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RegisterPublisherOutputForRegisterPublisher {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RegisterType operation in a HTTP client.
 */
extension RegisterTypeOutputForRegisterType: HTTPResponseOutputProtocol {
    public typealias BodyType = RegisterTypeOutputForRegisterType
    public typealias HeadersType = RegisterTypeOutputForRegisterType

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RegisterTypeOutputForRegisterType {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the SetTypeConfiguration operation in a HTTP client.
 */
extension SetTypeConfigurationOutputForSetTypeConfiguration: HTTPResponseOutputProtocol {
    public typealias BodyType = SetTypeConfigurationOutputForSetTypeConfiguration
    public typealias HeadersType = SetTypeConfigurationOutputForSetTypeConfiguration

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> SetTypeConfigurationOutputForSetTypeConfiguration {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the SetTypeDefaultVersion operation in a HTTP client.
 */
extension SetTypeDefaultVersionOutputForSetTypeDefaultVersion: HTTPResponseOutputProtocol {
    public typealias BodyType = SetTypeDefaultVersionOutputForSetTypeDefaultVersion
    public typealias HeadersType = SetTypeDefaultVersionOutputForSetTypeDefaultVersion

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> SetTypeDefaultVersionOutputForSetTypeDefaultVersion {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StopStackSetOperation operation in a HTTP client.
 */
extension StopStackSetOperationOutputForStopStackSetOperation: HTTPResponseOutputProtocol {
    public typealias BodyType = StopStackSetOperationOutputForStopStackSetOperation
    public typealias HeadersType = StopStackSetOperationOutputForStopStackSetOperation

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StopStackSetOperationOutputForStopStackSetOperation {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the TestType operation in a HTTP client.
 */
extension TestTypeOutputForTestType: HTTPResponseOutputProtocol {
    public typealias BodyType = TestTypeOutputForTestType
    public typealias HeadersType = TestTypeOutputForTestType

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> TestTypeOutputForTestType {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateStack operation in a HTTP client.
 */
extension UpdateStackOutputForUpdateStack: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateStackOutputForUpdateStack
    public typealias HeadersType = UpdateStackOutputForUpdateStack

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateStackOutputForUpdateStack {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateStackInstances operation in a HTTP client.
 */
extension UpdateStackInstancesOutputForUpdateStackInstances: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateStackInstancesOutputForUpdateStackInstances
    public typealias HeadersType = UpdateStackInstancesOutputForUpdateStackInstances

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateStackInstancesOutputForUpdateStackInstances {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateStackSet operation in a HTTP client.
 */
extension UpdateStackSetOutputForUpdateStackSet: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateStackSetOutputForUpdateStackSet
    public typealias HeadersType = UpdateStackSetOutputForUpdateStackSet

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateStackSetOutputForUpdateStackSet {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateTerminationProtection operation in a HTTP client.
 */
extension UpdateTerminationProtectionOutputForUpdateTerminationProtection: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateTerminationProtectionOutputForUpdateTerminationProtection
    public typealias HeadersType = UpdateTerminationProtectionOutputForUpdateTerminationProtection

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateTerminationProtectionOutputForUpdateTerminationProtection {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ValidateTemplate operation in a HTTP client.
 */
extension ValidateTemplateOutputForValidateTemplate: HTTPResponseOutputProtocol {
    public typealias BodyType = ValidateTemplateOutputForValidateTemplate
    public typealias HeadersType = ValidateTemplateOutputForValidateTemplate

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ValidateTemplateOutputForValidateTemplate {
        return try bodyDecodableProvider()
    }
}
