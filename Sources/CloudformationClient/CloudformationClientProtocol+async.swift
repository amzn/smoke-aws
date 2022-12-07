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
// CloudformationClientProtocol+async.swift
// CloudformationClient
//

import Foundation
import CloudformationModel

#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

/**
 Async extensions for the CloudformationClientProtocol type.
 */
public extension CloudformationClientProtocol {

    /**
     Invokes the ActivateType operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ActivateTypeInput object being passed to this operation.
     - Returns: The ActivateTypeOutputForActivateType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func activateType(input: CloudformationModel.ActivateTypeInput) async throws
     -> CloudformationModel.ActivateTypeOutputForActivateType {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try activateTypeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the BatchDescribeTypeConfigurations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated BatchDescribeTypeConfigurationsInput object being passed to this operation.
     - Returns: The BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeConfigurationNotFound.
     */
    func batchDescribeTypeConfigurations(input: CloudformationModel.BatchDescribeTypeConfigurationsInput) async throws
     -> CloudformationModel.BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try batchDescribeTypeConfigurationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CancelUpdateStack operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CancelUpdateStackInput object being passed to this operation.
     - Throws: tokenAlreadyExists.
     */
    func cancelUpdateStack(input: CloudformationModel.CancelUpdateStackInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try cancelUpdateStackAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ContinueUpdateRollback operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ContinueUpdateRollbackInput object being passed to this operation.
     - Returns: The ContinueUpdateRollbackOutputForContinueUpdateRollback object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: tokenAlreadyExists.
     */
    func continueUpdateRollback(input: CloudformationModel.ContinueUpdateRollbackInput) async throws
     -> CloudformationModel.ContinueUpdateRollbackOutputForContinueUpdateRollback {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try continueUpdateRollbackAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateChangeSet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateChangeSetInput object being passed to this operation.
     - Returns: The CreateChangeSetOutputForCreateChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: alreadyExists, insufficientCapabilities, limitExceeded.
     */
    func createChangeSet(input: CloudformationModel.CreateChangeSetInput) async throws
     -> CloudformationModel.CreateChangeSetOutputForCreateChangeSet {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createChangeSetAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateStack operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateStackInput object being passed to this operation.
     - Returns: The CreateStackOutputForCreateStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: alreadyExists, insufficientCapabilities, limitExceeded, tokenAlreadyExists.
     */
    func createStack(input: CloudformationModel.CreateStackInput) async throws
     -> CloudformationModel.CreateStackOutputForCreateStack {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createStackAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateStackInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateStackInstancesInput object being passed to this operation.
     - Returns: The CreateStackInstancesOutputForCreateStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, limitExceeded, operationIdAlreadyExists, operationInProgress, stackSetNotFound, staleRequest.
     */
    func createStackInstances(input: CloudformationModel.CreateStackInstancesInput) async throws
     -> CloudformationModel.CreateStackInstancesOutputForCreateStackInstances {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createStackInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateStackSet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateStackSetInput object being passed to this operation.
     - Returns: The CreateStackSetOutputForCreateStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: createdButModified, limitExceeded, nameAlreadyExists.
     */
    func createStackSet(input: CloudformationModel.CreateStackSetInput) async throws
     -> CloudformationModel.CreateStackSetOutputForCreateStackSet {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createStackSetAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeactivateType operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeactivateTypeInput object being passed to this operation.
     - Returns: The DeactivateTypeOutputForDeactivateType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func deactivateType(input: CloudformationModel.DeactivateTypeInput) async throws
     -> CloudformationModel.DeactivateTypeOutputForDeactivateType {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deactivateTypeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteChangeSet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteChangeSetInput object being passed to this operation.
     - Returns: The DeleteChangeSetOutputForDeleteChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidChangeSetStatus.
     */
    func deleteChangeSet(input: CloudformationModel.DeleteChangeSetInput) async throws
     -> CloudformationModel.DeleteChangeSetOutputForDeleteChangeSet {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteChangeSetAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteStack operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteStackInput object being passed to this operation.
     - Throws: tokenAlreadyExists.
     */
    func deleteStack(input: CloudformationModel.DeleteStackInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteStackAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteStackInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteStackInstancesInput object being passed to this operation.
     - Returns: The DeleteStackInstancesOutputForDeleteStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationIdAlreadyExists, operationInProgress, stackSetNotFound, staleRequest.
     */
    func deleteStackInstances(input: CloudformationModel.DeleteStackInstancesInput) async throws
     -> CloudformationModel.DeleteStackInstancesOutputForDeleteStackInstances {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteStackInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteStackSet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteStackSetInput object being passed to this operation.
     - Returns: The DeleteStackSetOutputForDeleteStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationInProgress, stackSetNotEmpty.
     */
    func deleteStackSet(input: CloudformationModel.DeleteStackSetInput) async throws
     -> CloudformationModel.DeleteStackSetOutputForDeleteStackSet {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteStackSetAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeregisterType operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeregisterTypeInput object being passed to this operation.
     - Returns: The DeregisterTypeOutputForDeregisterType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func deregisterType(input: CloudformationModel.DeregisterTypeInput) async throws
     -> CloudformationModel.DeregisterTypeOutputForDeregisterType {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deregisterTypeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeAccountLimits operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeAccountLimitsInput object being passed to this operation.
     - Returns: The DescribeAccountLimitsOutputForDescribeAccountLimits object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAccountLimits(input: CloudformationModel.DescribeAccountLimitsInput) async throws
     -> CloudformationModel.DescribeAccountLimitsOutputForDescribeAccountLimits {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeAccountLimitsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeChangeSet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeChangeSetInput object being passed to this operation.
     - Returns: The DescribeChangeSetOutputForDescribeChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound.
     */
    func describeChangeSet(input: CloudformationModel.DescribeChangeSetInput) async throws
     -> CloudformationModel.DescribeChangeSetOutputForDescribeChangeSet {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeChangeSetAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeChangeSetHooks operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeChangeSetHooksInput object being passed to this operation.
     - Returns: The DescribeChangeSetHooksOutputForDescribeChangeSetHooks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound.
     */
    func describeChangeSetHooks(input: CloudformationModel.DescribeChangeSetHooksInput) async throws
     -> CloudformationModel.DescribeChangeSetHooksOutputForDescribeChangeSetHooks {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeChangeSetHooksAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribePublisher operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribePublisherInput object being passed to this operation.
     - Returns: The DescribePublisherOutputForDescribePublisher object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func describePublisher(input: CloudformationModel.DescribePublisherInput) async throws
     -> CloudformationModel.DescribePublisherOutputForDescribePublisher {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describePublisherAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeStackDriftDetectionStatus operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeStackDriftDetectionStatusInput object being passed to this operation.
     - Returns: The DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStackDriftDetectionStatus(input: CloudformationModel.DescribeStackDriftDetectionStatusInput) async throws
     -> CloudformationModel.DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeStackDriftDetectionStatusAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeStackEvents operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeStackEventsInput object being passed to this operation.
     - Returns: The DescribeStackEventsOutputForDescribeStackEvents object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStackEvents(input: CloudformationModel.DescribeStackEventsInput) async throws
     -> CloudformationModel.DescribeStackEventsOutputForDescribeStackEvents {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeStackEventsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeStackInstance operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeStackInstanceInput object being passed to this operation.
     - Returns: The DescribeStackInstanceOutputForDescribeStackInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackInstanceNotFound, stackSetNotFound.
     */
    func describeStackInstance(input: CloudformationModel.DescribeStackInstanceInput) async throws
     -> CloudformationModel.DescribeStackInstanceOutputForDescribeStackInstance {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeStackInstanceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeStackResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeStackResourceInput object being passed to this operation.
     - Returns: The DescribeStackResourceOutputForDescribeStackResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStackResource(input: CloudformationModel.DescribeStackResourceInput) async throws
     -> CloudformationModel.DescribeStackResourceOutputForDescribeStackResource {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeStackResourceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeStackResourceDrifts operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeStackResourceDriftsInput object being passed to this operation.
     - Returns: The DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStackResourceDrifts(input: CloudformationModel.DescribeStackResourceDriftsInput) async throws
     -> CloudformationModel.DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeStackResourceDriftsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeStackResources operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeStackResourcesInput object being passed to this operation.
     - Returns: The DescribeStackResourcesOutputForDescribeStackResources object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStackResources(input: CloudformationModel.DescribeStackResourcesInput) async throws
     -> CloudformationModel.DescribeStackResourcesOutputForDescribeStackResources {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeStackResourcesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeStackSet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeStackSetInput object being passed to this operation.
     - Returns: The DescribeStackSetOutputForDescribeStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    func describeStackSet(input: CloudformationModel.DescribeStackSetInput) async throws
     -> CloudformationModel.DescribeStackSetOutputForDescribeStackSet {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeStackSetAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeStackSetOperation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeStackSetOperationInput object being passed to this operation.
     - Returns: The DescribeStackSetOperationOutputForDescribeStackSetOperation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotFound, stackSetNotFound.
     */
    func describeStackSetOperation(input: CloudformationModel.DescribeStackSetOperationInput) async throws
     -> CloudformationModel.DescribeStackSetOperationOutputForDescribeStackSetOperation {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeStackSetOperationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeStacks operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeStacksInput object being passed to this operation.
     - Returns: The DescribeStacksOutputForDescribeStacks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStacks(input: CloudformationModel.DescribeStacksInput) async throws
     -> CloudformationModel.DescribeStacksOutputForDescribeStacks {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeStacksAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeType operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTypeInput object being passed to this operation.
     - Returns: The DescribeTypeOutputForDescribeType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func describeType(input: CloudformationModel.DescribeTypeInput) async throws
     -> CloudformationModel.DescribeTypeOutputForDescribeType {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeTypeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeTypeRegistration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTypeRegistrationInput object being passed to this operation.
     - Returns: The DescribeTypeRegistrationOutputForDescribeTypeRegistration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func describeTypeRegistration(input: CloudformationModel.DescribeTypeRegistrationInput) async throws
     -> CloudformationModel.DescribeTypeRegistrationOutputForDescribeTypeRegistration {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeTypeRegistrationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DetectStackDrift operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DetectStackDriftInput object being passed to this operation.
     - Returns: The DetectStackDriftOutputForDetectStackDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detectStackDrift(input: CloudformationModel.DetectStackDriftInput) async throws
     -> CloudformationModel.DetectStackDriftOutputForDetectStackDrift {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try detectStackDriftAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DetectStackResourceDrift operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DetectStackResourceDriftInput object being passed to this operation.
     - Returns: The DetectStackResourceDriftOutputForDetectStackResourceDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detectStackResourceDrift(input: CloudformationModel.DetectStackResourceDriftInput) async throws
     -> CloudformationModel.DetectStackResourceDriftOutputForDetectStackResourceDrift {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try detectStackResourceDriftAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DetectStackSetDrift operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DetectStackSetDriftInput object being passed to this operation.
     - Returns: The DetectStackSetDriftOutputForDetectStackSetDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationInProgress, stackSetNotFound.
     */
    func detectStackSetDrift(input: CloudformationModel.DetectStackSetDriftInput) async throws
     -> CloudformationModel.DetectStackSetDriftOutputForDetectStackSetDrift {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try detectStackSetDriftAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EstimateTemplateCost operation and asynchronously returning the response.

     - Parameters:
         - input: The validated EstimateTemplateCostInput object being passed to this operation.
     - Returns: The EstimateTemplateCostOutputForEstimateTemplateCost object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func estimateTemplateCost(input: CloudformationModel.EstimateTemplateCostInput) async throws
     -> CloudformationModel.EstimateTemplateCostOutputForEstimateTemplateCost {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try estimateTemplateCostAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ExecuteChangeSet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ExecuteChangeSetInput object being passed to this operation.
     - Returns: The ExecuteChangeSetOutputForExecuteChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound, insufficientCapabilities, invalidChangeSetStatus, tokenAlreadyExists.
     */
    func executeChangeSet(input: CloudformationModel.ExecuteChangeSetInput) async throws
     -> CloudformationModel.ExecuteChangeSetOutputForExecuteChangeSet {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try executeChangeSetAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetStackPolicy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetStackPolicyInput object being passed to this operation.
     - Returns: The GetStackPolicyOutputForGetStackPolicy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getStackPolicy(input: CloudformationModel.GetStackPolicyInput) async throws
     -> CloudformationModel.GetStackPolicyOutputForGetStackPolicy {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getStackPolicyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetTemplate operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetTemplateInput object being passed to this operation.
     - Returns: The GetTemplateOutputForGetTemplate object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound.
     */
    func getTemplate(input: CloudformationModel.GetTemplateInput) async throws
     -> CloudformationModel.GetTemplateOutputForGetTemplate {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getTemplateAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetTemplateSummary operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetTemplateSummaryInput object being passed to this operation.
     - Returns: The GetTemplateSummaryOutputForGetTemplateSummary object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    func getTemplateSummary(input: CloudformationModel.GetTemplateSummaryInput) async throws
     -> CloudformationModel.GetTemplateSummaryOutputForGetTemplateSummary {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getTemplateSummaryAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ImportStacksToStackSet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ImportStacksToStackSetInput object being passed to this operation.
     - Returns: The ImportStacksToStackSetOutputForImportStacksToStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, limitExceeded, operationIdAlreadyExists, operationInProgress, stackNotFound, stackSetNotFound, staleRequest.
     */
    func importStacksToStackSet(input: CloudformationModel.ImportStacksToStackSetInput) async throws
     -> CloudformationModel.ImportStacksToStackSetOutputForImportStacksToStackSet {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try importStacksToStackSetAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListChangeSets operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListChangeSetsInput object being passed to this operation.
     - Returns: The ListChangeSetsOutputForListChangeSets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listChangeSets(input: CloudformationModel.ListChangeSetsInput) async throws
     -> CloudformationModel.ListChangeSetsOutputForListChangeSets {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listChangeSetsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListExports operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListExportsInput object being passed to this operation.
     - Returns: The ListExportsOutputForListExports object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listExports(input: CloudformationModel.ListExportsInput) async throws
     -> CloudformationModel.ListExportsOutputForListExports {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listExportsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListImports operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListImportsInput object being passed to this operation.
     - Returns: The ListImportsOutputForListImports object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listImports(input: CloudformationModel.ListImportsInput) async throws
     -> CloudformationModel.ListImportsOutputForListImports {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listImportsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListStackInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListStackInstancesInput object being passed to this operation.
     - Returns: The ListStackInstancesOutputForListStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    func listStackInstances(input: CloudformationModel.ListStackInstancesInput) async throws
     -> CloudformationModel.ListStackInstancesOutputForListStackInstances {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listStackInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListStackResources operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListStackResourcesInput object being passed to this operation.
     - Returns: The ListStackResourcesOutputForListStackResources object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listStackResources(input: CloudformationModel.ListStackResourcesInput) async throws
     -> CloudformationModel.ListStackResourcesOutputForListStackResources {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listStackResourcesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListStackSetOperationResults operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListStackSetOperationResultsInput object being passed to this operation.
     - Returns: The ListStackSetOperationResultsOutputForListStackSetOperationResults object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotFound, stackSetNotFound.
     */
    func listStackSetOperationResults(input: CloudformationModel.ListStackSetOperationResultsInput) async throws
     -> CloudformationModel.ListStackSetOperationResultsOutputForListStackSetOperationResults {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listStackSetOperationResultsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListStackSetOperations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListStackSetOperationsInput object being passed to this operation.
     - Returns: The ListStackSetOperationsOutputForListStackSetOperations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    func listStackSetOperations(input: CloudformationModel.ListStackSetOperationsInput) async throws
     -> CloudformationModel.ListStackSetOperationsOutputForListStackSetOperations {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listStackSetOperationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListStackSets operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListStackSetsInput object being passed to this operation.
     - Returns: The ListStackSetsOutputForListStackSets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listStackSets(input: CloudformationModel.ListStackSetsInput) async throws
     -> CloudformationModel.ListStackSetsOutputForListStackSets {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listStackSetsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListStacks operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListStacksInput object being passed to this operation.
     - Returns: The ListStacksOutputForListStacks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listStacks(input: CloudformationModel.ListStacksInput) async throws
     -> CloudformationModel.ListStacksOutputForListStacks {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listStacksAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListTypeRegistrations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListTypeRegistrationsInput object being passed to this operation.
     - Returns: The ListTypeRegistrationsOutputForListTypeRegistrations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func listTypeRegistrations(input: CloudformationModel.ListTypeRegistrationsInput) async throws
     -> CloudformationModel.ListTypeRegistrationsOutputForListTypeRegistrations {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listTypeRegistrationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListTypeVersions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListTypeVersionsInput object being passed to this operation.
     - Returns: The ListTypeVersionsOutputForListTypeVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func listTypeVersions(input: CloudformationModel.ListTypeVersionsInput) async throws
     -> CloudformationModel.ListTypeVersionsOutputForListTypeVersions {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listTypeVersionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListTypes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListTypesInput object being passed to this operation.
     - Returns: The ListTypesOutputForListTypes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func listTypes(input: CloudformationModel.ListTypesInput) async throws
     -> CloudformationModel.ListTypesOutputForListTypes {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listTypesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PublishType operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PublishTypeInput object being passed to this operation.
     - Returns: The PublishTypeOutputForPublishType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func publishType(input: CloudformationModel.PublishTypeInput) async throws
     -> CloudformationModel.PublishTypeOutputForPublishType {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try publishTypeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RecordHandlerProgress operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RecordHandlerProgressInput object being passed to this operation.
     - Returns: The RecordHandlerProgressOutputForRecordHandlerProgress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidStateTransition, operationStatusCheckFailed.
     */
    func recordHandlerProgress(input: CloudformationModel.RecordHandlerProgressInput) async throws
     -> CloudformationModel.RecordHandlerProgressOutputForRecordHandlerProgress {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try recordHandlerProgressAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RegisterPublisher operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RegisterPublisherInput object being passed to this operation.
     - Returns: The RegisterPublisherOutputForRegisterPublisher object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func registerPublisher(input: CloudformationModel.RegisterPublisherInput) async throws
     -> CloudformationModel.RegisterPublisherOutputForRegisterPublisher {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try registerPublisherAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RegisterType operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RegisterTypeInput object being passed to this operation.
     - Returns: The RegisterTypeOutputForRegisterType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    func registerType(input: CloudformationModel.RegisterTypeInput) async throws
     -> CloudformationModel.RegisterTypeOutputForRegisterType {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try registerTypeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RollbackStack operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RollbackStackInput object being passed to this operation.
     - Returns: The RollbackStackOutputForRollbackStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: tokenAlreadyExists.
     */
    func rollbackStack(input: CloudformationModel.RollbackStackInput) async throws
     -> CloudformationModel.RollbackStackOutputForRollbackStack {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try rollbackStackAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the SetStackPolicy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SetStackPolicyInput object being passed to this operation.
     */
    func setStackPolicy(input: CloudformationModel.SetStackPolicyInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try setStackPolicyAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the SetTypeConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SetTypeConfigurationInput object being passed to this operation.
     - Returns: The SetTypeConfigurationOutputForSetTypeConfiguration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func setTypeConfiguration(input: CloudformationModel.SetTypeConfigurationInput) async throws
     -> CloudformationModel.SetTypeConfigurationOutputForSetTypeConfiguration {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try setTypeConfigurationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the SetTypeDefaultVersion operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SetTypeDefaultVersionInput object being passed to this operation.
     - Returns: The SetTypeDefaultVersionOutputForSetTypeDefaultVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func setTypeDefaultVersion(input: CloudformationModel.SetTypeDefaultVersionInput) async throws
     -> CloudformationModel.SetTypeDefaultVersionOutputForSetTypeDefaultVersion {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try setTypeDefaultVersionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the SignalResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SignalResourceInput object being passed to this operation.
     */
    func signalResource(input: CloudformationModel.SignalResourceInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try signalResourceAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StopStackSetOperation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StopStackSetOperationInput object being passed to this operation.
     - Returns: The StopStackSetOperationOutputForStopStackSetOperation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationNotFound, stackSetNotFound.
     */
    func stopStackSetOperation(input: CloudformationModel.StopStackSetOperationInput) async throws
     -> CloudformationModel.StopStackSetOperationOutputForStopStackSetOperation {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try stopStackSetOperationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the TestType operation and asynchronously returning the response.

     - Parameters:
         - input: The validated TestTypeInput object being passed to this operation.
     - Returns: The TestTypeOutputForTestType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    func testType(input: CloudformationModel.TestTypeInput) async throws
     -> CloudformationModel.TestTypeOutputForTestType {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try testTypeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateStack operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateStackInput object being passed to this operation.
     - Returns: The UpdateStackOutputForUpdateStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: insufficientCapabilities, tokenAlreadyExists.
     */
    func updateStack(input: CloudformationModel.UpdateStackInput) async throws
     -> CloudformationModel.UpdateStackOutputForUpdateStack {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try updateStackAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateStackInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateStackInstancesInput object being passed to this operation.
     - Returns: The UpdateStackInstancesOutputForUpdateStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationIdAlreadyExists, operationInProgress, stackInstanceNotFound, stackSetNotFound, staleRequest.
     */
    func updateStackInstances(input: CloudformationModel.UpdateStackInstancesInput) async throws
     -> CloudformationModel.UpdateStackInstancesOutputForUpdateStackInstances {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try updateStackInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateStackSet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateStackSetInput object being passed to this operation.
     - Returns: The UpdateStackSetOutputForUpdateStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationIdAlreadyExists, operationInProgress, stackInstanceNotFound, stackSetNotFound, staleRequest.
     */
    func updateStackSet(input: CloudformationModel.UpdateStackSetInput) async throws
     -> CloudformationModel.UpdateStackSetOutputForUpdateStackSet {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try updateStackSetAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateTerminationProtection operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateTerminationProtectionInput object being passed to this operation.
     - Returns: The UpdateTerminationProtectionOutputForUpdateTerminationProtection object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func updateTerminationProtection(input: CloudformationModel.UpdateTerminationProtectionInput) async throws
     -> CloudformationModel.UpdateTerminationProtectionOutputForUpdateTerminationProtection {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try updateTerminationProtectionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ValidateTemplate operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ValidateTemplateInput object being passed to this operation.
     - Returns: The ValidateTemplateOutputForValidateTemplate object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func validateTemplate(input: CloudformationModel.ValidateTemplateInput) async throws
     -> CloudformationModel.ValidateTemplateOutputForValidateTemplate {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try validateTemplateAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }
}

#endif
