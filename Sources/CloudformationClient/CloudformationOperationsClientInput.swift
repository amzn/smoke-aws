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
// CloudformationOperationsClientInput.swift
// CloudformationClient
//

import Foundation
import SmokeHTTPClient
import CloudformationModel

/**
 Type to handle the input to the CancelUpdateStack operation in a HTTP client.
 */
public typealias CancelUpdateStackOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ContinueUpdateRollback operation in a HTTP client.
 */
public typealias ContinueUpdateRollbackOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CreateChangeSet operation in a HTTP client.
 */
public typealias CreateChangeSetOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CreateStack operation in a HTTP client.
 */
public typealias CreateStackOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CreateStackInstances operation in a HTTP client.
 */
public typealias CreateStackInstancesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CreateStackSet operation in a HTTP client.
 */
public typealias CreateStackSetOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteChangeSet operation in a HTTP client.
 */
public typealias DeleteChangeSetOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteStack operation in a HTTP client.
 */
public typealias DeleteStackOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteStackInstances operation in a HTTP client.
 */
public typealias DeleteStackInstancesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteStackSet operation in a HTTP client.
 */
public typealias DeleteStackSetOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeregisterType operation in a HTTP client.
 */
public typealias DeregisterTypeOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeAccountLimits operation in a HTTP client.
 */
public typealias DescribeAccountLimitsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeChangeSet operation in a HTTP client.
 */
public typealias DescribeChangeSetOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeStackDriftDetectionStatus operation in a HTTP client.
 */
public typealias DescribeStackDriftDetectionStatusOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeStackEvents operation in a HTTP client.
 */
public typealias DescribeStackEventsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeStackInstance operation in a HTTP client.
 */
public typealias DescribeStackInstanceOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeStackResource operation in a HTTP client.
 */
public typealias DescribeStackResourceOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeStackResourceDrifts operation in a HTTP client.
 */
public typealias DescribeStackResourceDriftsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeStackResources operation in a HTTP client.
 */
public typealias DescribeStackResourcesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeStackSet operation in a HTTP client.
 */
public typealias DescribeStackSetOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeStackSetOperation operation in a HTTP client.
 */
public typealias DescribeStackSetOperationOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeStacks operation in a HTTP client.
 */
public typealias DescribeStacksOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeType operation in a HTTP client.
 */
public typealias DescribeTypeOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeTypeRegistration operation in a HTTP client.
 */
public typealias DescribeTypeRegistrationOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DetectStackDrift operation in a HTTP client.
 */
public typealias DetectStackDriftOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DetectStackResourceDrift operation in a HTTP client.
 */
public typealias DetectStackResourceDriftOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DetectStackSetDrift operation in a HTTP client.
 */
public typealias DetectStackSetDriftOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the EstimateTemplateCost operation in a HTTP client.
 */
public typealias EstimateTemplateCostOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ExecuteChangeSet operation in a HTTP client.
 */
public typealias ExecuteChangeSetOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the GetStackPolicy operation in a HTTP client.
 */
public typealias GetStackPolicyOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the GetTemplate operation in a HTTP client.
 */
public typealias GetTemplateOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the GetTemplateSummary operation in a HTTP client.
 */
public typealias GetTemplateSummaryOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ListChangeSets operation in a HTTP client.
 */
public typealias ListChangeSetsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ListExports operation in a HTTP client.
 */
public typealias ListExportsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ListImports operation in a HTTP client.
 */
public typealias ListImportsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ListStackInstances operation in a HTTP client.
 */
public typealias ListStackInstancesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ListStackResources operation in a HTTP client.
 */
public typealias ListStackResourcesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ListStackSetOperationResults operation in a HTTP client.
 */
public typealias ListStackSetOperationResultsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ListStackSetOperations operation in a HTTP client.
 */
public typealias ListStackSetOperationsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ListStackSets operation in a HTTP client.
 */
public typealias ListStackSetsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ListStacks operation in a HTTP client.
 */
public typealias ListStacksOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ListTypeRegistrations operation in a HTTP client.
 */
public typealias ListTypeRegistrationsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ListTypeVersions operation in a HTTP client.
 */
public typealias ListTypeVersionsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ListTypes operation in a HTTP client.
 */
public typealias ListTypesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the RecordHandlerProgress operation in a HTTP client.
 */
public typealias RecordHandlerProgressOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the RegisterType operation in a HTTP client.
 */
public typealias RegisterTypeOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the SetStackPolicy operation in a HTTP client.
 */
public typealias SetStackPolicyOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the SetTypeDefaultVersion operation in a HTTP client.
 */
public typealias SetTypeDefaultVersionOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the SignalResource operation in a HTTP client.
 */
public typealias SignalResourceOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the StopStackSetOperation operation in a HTTP client.
 */
public typealias StopStackSetOperationOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the UpdateStack operation in a HTTP client.
 */
public typealias UpdateStackOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the UpdateStackInstances operation in a HTTP client.
 */
public typealias UpdateStackInstancesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the UpdateStackSet operation in a HTTP client.
 */
public typealias UpdateStackSetOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the UpdateTerminationProtection operation in a HTTP client.
 */
public typealias UpdateTerminationProtectionOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ValidateTemplate operation in a HTTP client.
 */
public typealias ValidateTemplateOperationHTTPRequestInput = QueryHTTPRequestInput
