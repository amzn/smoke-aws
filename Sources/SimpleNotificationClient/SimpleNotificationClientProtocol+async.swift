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
// SimpleNotificationClientProtocol+async.swift
// SimpleNotificationClient
//

import Foundation
import SimpleNotificationModel

#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

/**
 Async extensions for the SimpleNotificationClientProtocol type.
 */
public extension SimpleNotificationClientProtocol {

    /**
     Invokes the AddPermission operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func addPermission(input: SimpleNotificationModel.AddPermissionInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try addPermissionAsync(input: input) { error in
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
     Invokes the CheckIfPhoneNumberIsOptedOut operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CheckIfPhoneNumberIsOptedOutInput object being passed to this operation.
     - Returns: The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func checkIfPhoneNumberIsOptedOut(input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput) async throws
     -> SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try checkIfPhoneNumberIsOptedOutAsync(input: input) { result in
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
     Invokes the ConfirmSubscription operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ConfirmSubscriptionInput object being passed to this operation.
     - Returns: The ConfirmSubscriptionResponseForConfirmSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, subscriptionLimitExceeded.
     */
    func confirmSubscription(input: SimpleNotificationModel.ConfirmSubscriptionInput) async throws
     -> SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try confirmSubscriptionAsync(input: input) { result in
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
     Invokes the CreatePlatformApplication operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreatePlatformApplicationInput object being passed to this operation.
     - Returns: The CreatePlatformApplicationResponseForCreatePlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func createPlatformApplication(input: SimpleNotificationModel.CreatePlatformApplicationInput) async throws
     -> SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createPlatformApplicationAsync(input: input) { result in
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
     Invokes the CreatePlatformEndpoint operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreatePlatformEndpointInput object being passed to this operation.
     - Returns: The CreateEndpointResponseForCreatePlatformEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func createPlatformEndpoint(input: SimpleNotificationModel.CreatePlatformEndpointInput) async throws
     -> SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createPlatformEndpointAsync(input: input) { result in
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
     Invokes the CreateSMSSandboxPhoneNumber operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateSMSSandboxPhoneNumberInput object being passed to this operation.
     - Returns: The CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, optedOut, throttled, userError.
     */
    func createSMSSandboxPhoneNumber(input: SimpleNotificationModel.CreateSMSSandboxPhoneNumberInput) async throws
     -> SimpleNotificationModel.CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createSMSSandboxPhoneNumberAsync(input: input) { result in
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
     Invokes the CreateTopic operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateTopicInput object being passed to this operation.
     - Returns: The CreateTopicResponseForCreateTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, invalidSecurity, staleTag, tagLimitExceeded, tagPolicy, topicLimitExceeded.
     */
    func createTopic(input: SimpleNotificationModel.CreateTopicInput) async throws
     -> SimpleNotificationModel.CreateTopicResponseForCreateTopic {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createTopicAsync(input: input) { result in
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
     Invokes the DeleteEndpoint operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func deleteEndpoint(input: SimpleNotificationModel.DeleteEndpointInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteEndpointAsync(input: input) { error in
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
     Invokes the DeletePlatformApplication operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func deletePlatformApplication(input: SimpleNotificationModel.DeletePlatformApplicationInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deletePlatformApplicationAsync(input: input) { error in
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
     Invokes the DeleteSMSSandboxPhoneNumber operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteSMSSandboxPhoneNumberInput object being passed to this operation.
     - Returns: The DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, resourceNotFound, throttled, userError.
     */
    func deleteSMSSandboxPhoneNumber(input: SimpleNotificationModel.DeleteSMSSandboxPhoneNumberInput) async throws
     -> SimpleNotificationModel.DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteSMSSandboxPhoneNumberAsync(input: input) { result in
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
     Invokes the DeleteTopic operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, notFound, staleTag, tagPolicy.
     */
    func deleteTopic(input: SimpleNotificationModel.DeleteTopicInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteTopicAsync(input: input) { error in
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
     Invokes the GetEndpointAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetEndpointAttributesInput object being passed to this operation.
     - Returns: The GetEndpointAttributesResponseForGetEndpointAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func getEndpointAttributes(input: SimpleNotificationModel.GetEndpointAttributesInput) async throws
     -> SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getEndpointAttributesAsync(input: input) { result in
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
     Invokes the GetPlatformApplicationAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetPlatformApplicationAttributesInput object being passed to this operation.
     - Returns: The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func getPlatformApplicationAttributes(input: SimpleNotificationModel.GetPlatformApplicationAttributesInput) async throws
     -> SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getPlatformApplicationAttributesAsync(input: input) { result in
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
     Invokes the GetSMSAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetSMSAttributesInput object being passed to this operation.
     - Returns: The GetSMSAttributesResponseForGetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func getSMSAttributes(input: SimpleNotificationModel.GetSMSAttributesInput) async throws
     -> SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getSMSAttributesAsync(input: input) { result in
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
     Invokes the GetSMSSandboxAccountStatus operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetSMSSandboxAccountStatusInput object being passed to this operation.
     - Returns: The GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, throttled.
     */
    func getSMSSandboxAccountStatus(input: SimpleNotificationModel.GetSMSSandboxAccountStatusInput) async throws
     -> SimpleNotificationModel.GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getSMSSandboxAccountStatusAsync(input: input) { result in
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
     Invokes the GetSubscriptionAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetSubscriptionAttributesInput object being passed to this operation.
     - Returns: The GetSubscriptionAttributesResponseForGetSubscriptionAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func getSubscriptionAttributes(input: SimpleNotificationModel.GetSubscriptionAttributesInput) async throws
     -> SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getSubscriptionAttributesAsync(input: input) { result in
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
     Invokes the GetTopicAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetTopicAttributesInput object being passed to this operation.
     - Returns: The GetTopicAttributesResponseForGetTopicAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func getTopicAttributes(input: SimpleNotificationModel.GetTopicAttributesInput) async throws
     -> SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getTopicAttributesAsync(input: input) { result in
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
     Invokes the ListEndpointsByPlatformApplication operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListEndpointsByPlatformApplicationInput object being passed to this operation.
     - Returns: The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func listEndpointsByPlatformApplication(input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput) async throws
     -> SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listEndpointsByPlatformApplicationAsync(input: input) { result in
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
     Invokes the ListOriginationNumbers operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListOriginationNumbersRequest object being passed to this operation.
     - Returns: The ListOriginationNumbersResultForListOriginationNumbers object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled, validation.
     */
    func listOriginationNumbers(input: SimpleNotificationModel.ListOriginationNumbersRequest) async throws
     -> SimpleNotificationModel.ListOriginationNumbersResultForListOriginationNumbers {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listOriginationNumbersAsync(input: input) { result in
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
     Invokes the ListPhoneNumbersOptedOut operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListPhoneNumbersOptedOutInput object being passed to this operation.
     - Returns: The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func listPhoneNumbersOptedOut(input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput) async throws
     -> SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listPhoneNumbersOptedOutAsync(input: input) { result in
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
     Invokes the ListPlatformApplications operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListPlatformApplicationsInput object being passed to this operation.
     - Returns: The ListPlatformApplicationsResponseForListPlatformApplications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func listPlatformApplications(input: SimpleNotificationModel.ListPlatformApplicationsInput) async throws
     -> SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listPlatformApplicationsAsync(input: input) { result in
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
     Invokes the ListSMSSandboxPhoneNumbers operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListSMSSandboxPhoneNumbersInput object being passed to this operation.
     - Returns: The ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, resourceNotFound, throttled.
     */
    func listSMSSandboxPhoneNumbers(input: SimpleNotificationModel.ListSMSSandboxPhoneNumbersInput) async throws
     -> SimpleNotificationModel.ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listSMSSandboxPhoneNumbersAsync(input: input) { result in
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
     Invokes the ListSubscriptions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListSubscriptionsInput object being passed to this operation.
     - Returns: The ListSubscriptionsResponseForListSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func listSubscriptions(input: SimpleNotificationModel.ListSubscriptionsInput) async throws
     -> SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listSubscriptionsAsync(input: input) { result in
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
     Invokes the ListSubscriptionsByTopic operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListSubscriptionsByTopicInput object being passed to this operation.
     - Returns: The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func listSubscriptionsByTopic(input: SimpleNotificationModel.ListSubscriptionsByTopicInput) async throws
     -> SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listSubscriptionsByTopicAsync(input: input) { result in
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
     Invokes the ListTagsForResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponseForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, tagPolicy.
     */
    func listTagsForResource(input: SimpleNotificationModel.ListTagsForResourceRequest) async throws
     -> SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listTagsForResourceAsync(input: input) { result in
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
     Invokes the ListTopics operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListTopicsInput object being passed to this operation.
     - Returns: The ListTopicsResponseForListTopics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func listTopics(input: SimpleNotificationModel.ListTopicsInput) async throws
     -> SimpleNotificationModel.ListTopicsResponseForListTopics {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listTopicsAsync(input: input) { result in
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
     Invokes the OptInPhoneNumber operation and asynchronously returning the response.

     - Parameters:
         - input: The validated OptInPhoneNumberInput object being passed to this operation.
     - Returns: The OptInPhoneNumberResponseForOptInPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func optInPhoneNumber(input: SimpleNotificationModel.OptInPhoneNumberInput) async throws
     -> SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try optInPhoneNumberAsync(input: input) { result in
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
     Invokes the Publish operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PublishInput object being passed to this operation.
     - Returns: The PublishResponseForPublish object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, endpointDisabled, internalError, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled.
     */
    func publish(input: SimpleNotificationModel.PublishInput) async throws
     -> SimpleNotificationModel.PublishResponseForPublish {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try publishAsync(input: input) { result in
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
     Invokes the PublishBatch operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PublishBatchInput object being passed to this operation.
     - Returns: The PublishBatchResponseForPublishBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, batchEntryIdsNotDistinct, batchRequestTooLong, emptyBatchRequest, endpointDisabled, internalError, invalidBatchEntryId, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled, tooManyEntriesInBatchRequest.
     */
    func publishBatch(input: SimpleNotificationModel.PublishBatchInput) async throws
     -> SimpleNotificationModel.PublishBatchResponseForPublishBatch {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try publishBatchAsync(input: input) { result in
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
     Invokes the RemovePermission operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func removePermission(input: SimpleNotificationModel.RemovePermissionInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try removePermissionAsync(input: input) { error in
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
     Invokes the SetEndpointAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func setEndpointAttributes(input: SimpleNotificationModel.SetEndpointAttributesInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try setEndpointAttributesAsync(input: input) { error in
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
     Invokes the SetPlatformApplicationAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func setPlatformApplicationAttributes(input: SimpleNotificationModel.SetPlatformApplicationAttributesInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try setPlatformApplicationAttributesAsync(input: input) { error in
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
     Invokes the SetSMSAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SetSMSAttributesInput object being passed to this operation.
     - Returns: The SetSMSAttributesResponseForSetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func setSMSAttributes(input: SimpleNotificationModel.SetSMSAttributesInput) async throws
     -> SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try setSMSAttributesAsync(input: input) { result in
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
     Invokes the SetSubscriptionAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound.
     */
    func setSubscriptionAttributes(input: SimpleNotificationModel.SetSubscriptionAttributesInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try setSubscriptionAttributesAsync(input: input) { error in
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
     Invokes the SetTopicAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func setTopicAttributes(input: SimpleNotificationModel.SetTopicAttributesInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try setTopicAttributesAsync(input: input) { error in
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
     Invokes the Subscribe operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SubscribeInput object being passed to this operation.
     - Returns: The SubscribeResponseForSubscribe object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, invalidSecurity, notFound, subscriptionLimitExceeded.
     */
    func subscribe(input: SimpleNotificationModel.SubscribeInput) async throws
     -> SimpleNotificationModel.SubscribeResponseForSubscribe {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try subscribeAsync(input: input) { result in
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
     Invokes the TagResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponseForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    func tagResource(input: SimpleNotificationModel.TagResourceRequest) async throws
     -> SimpleNotificationModel.TagResourceResponseForTagResource {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try tagResourceAsync(input: input) { result in
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
     Invokes the Unsubscribe operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func unsubscribe(input: SimpleNotificationModel.UnsubscribeInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try unsubscribeAsync(input: input) { error in
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
     Invokes the UntagResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponseForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    func untagResource(input: SimpleNotificationModel.UntagResourceRequest) async throws
     -> SimpleNotificationModel.UntagResourceResponseForUntagResource {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try untagResourceAsync(input: input) { result in
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
     Invokes the VerifySMSSandboxPhoneNumber operation and asynchronously returning the response.

     - Parameters:
         - input: The validated VerifySMSSandboxPhoneNumberInput object being passed to this operation.
     - Returns: The VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, resourceNotFound, throttled, verification.
     */
    func verifySMSSandboxPhoneNumber(input: SimpleNotificationModel.VerifySMSSandboxPhoneNumberInput) async throws
     -> SimpleNotificationModel.VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try verifySMSSandboxPhoneNumberAsync(input: input) { result in
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
