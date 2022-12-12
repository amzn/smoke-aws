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
// MockSimpleNotificationClientV2.swift
// SimpleNotificationClient
//

import Foundation
import SimpleNotificationModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the SimpleNotification service by default returns the `__default` property of its return type.
 */
public struct MockSimpleNotificationClientV2: SimpleNotificationClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    let addPermissionOverride: AddPermissionFunctionType?
    let checkIfPhoneNumberIsOptedOutOverride: CheckIfPhoneNumberIsOptedOutFunctionType?
    let confirmSubscriptionOverride: ConfirmSubscriptionFunctionType?
    let createPlatformApplicationOverride: CreatePlatformApplicationFunctionType?
    let createPlatformEndpointOverride: CreatePlatformEndpointFunctionType?
    let createSMSSandboxPhoneNumberOverride: CreateSMSSandboxPhoneNumberFunctionType?
    let createTopicOverride: CreateTopicFunctionType?
    let deleteEndpointOverride: DeleteEndpointFunctionType?
    let deletePlatformApplicationOverride: DeletePlatformApplicationFunctionType?
    let deleteSMSSandboxPhoneNumberOverride: DeleteSMSSandboxPhoneNumberFunctionType?
    let deleteTopicOverride: DeleteTopicFunctionType?
    let getDataProtectionPolicyOverride: GetDataProtectionPolicyFunctionType?
    let getEndpointAttributesOverride: GetEndpointAttributesFunctionType?
    let getPlatformApplicationAttributesOverride: GetPlatformApplicationAttributesFunctionType?
    let getSMSAttributesOverride: GetSMSAttributesFunctionType?
    let getSMSSandboxAccountStatusOverride: GetSMSSandboxAccountStatusFunctionType?
    let getSubscriptionAttributesOverride: GetSubscriptionAttributesFunctionType?
    let getTopicAttributesOverride: GetTopicAttributesFunctionType?
    let listEndpointsByPlatformApplicationOverride: ListEndpointsByPlatformApplicationFunctionType?
    let listOriginationNumbersOverride: ListOriginationNumbersFunctionType?
    let listPhoneNumbersOptedOutOverride: ListPhoneNumbersOptedOutFunctionType?
    let listPlatformApplicationsOverride: ListPlatformApplicationsFunctionType?
    let listSMSSandboxPhoneNumbersOverride: ListSMSSandboxPhoneNumbersFunctionType?
    let listSubscriptionsOverride: ListSubscriptionsFunctionType?
    let listSubscriptionsByTopicOverride: ListSubscriptionsByTopicFunctionType?
    let listTagsForResourceOverride: ListTagsForResourceFunctionType?
    let listTopicsOverride: ListTopicsFunctionType?
    let optInPhoneNumberOverride: OptInPhoneNumberFunctionType?
    let publishOverride: PublishFunctionType?
    let publishBatchOverride: PublishBatchFunctionType?
    let putDataProtectionPolicyOverride: PutDataProtectionPolicyFunctionType?
    let removePermissionOverride: RemovePermissionFunctionType?
    let setEndpointAttributesOverride: SetEndpointAttributesFunctionType?
    let setPlatformApplicationAttributesOverride: SetPlatformApplicationAttributesFunctionType?
    let setSMSAttributesOverride: SetSMSAttributesFunctionType?
    let setSubscriptionAttributesOverride: SetSubscriptionAttributesFunctionType?
    let setTopicAttributesOverride: SetTopicAttributesFunctionType?
    let subscribeOverride: SubscribeFunctionType?
    let tagResourceOverride: TagResourceFunctionType?
    let unsubscribeOverride: UnsubscribeFunctionType?
    let untagResourceOverride: UntagResourceFunctionType?
    let verifySMSSandboxPhoneNumberOverride: VerifySMSSandboxPhoneNumberFunctionType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            addPermission: AddPermissionFunctionType? = nil,
            checkIfPhoneNumberIsOptedOut: CheckIfPhoneNumberIsOptedOutFunctionType? = nil,
            confirmSubscription: ConfirmSubscriptionFunctionType? = nil,
            createPlatformApplication: CreatePlatformApplicationFunctionType? = nil,
            createPlatformEndpoint: CreatePlatformEndpointFunctionType? = nil,
            createSMSSandboxPhoneNumber: CreateSMSSandboxPhoneNumberFunctionType? = nil,
            createTopic: CreateTopicFunctionType? = nil,
            deleteEndpoint: DeleteEndpointFunctionType? = nil,
            deletePlatformApplication: DeletePlatformApplicationFunctionType? = nil,
            deleteSMSSandboxPhoneNumber: DeleteSMSSandboxPhoneNumberFunctionType? = nil,
            deleteTopic: DeleteTopicFunctionType? = nil,
            getDataProtectionPolicy: GetDataProtectionPolicyFunctionType? = nil,
            getEndpointAttributes: GetEndpointAttributesFunctionType? = nil,
            getPlatformApplicationAttributes: GetPlatformApplicationAttributesFunctionType? = nil,
            getSMSAttributes: GetSMSAttributesFunctionType? = nil,
            getSMSSandboxAccountStatus: GetSMSSandboxAccountStatusFunctionType? = nil,
            getSubscriptionAttributes: GetSubscriptionAttributesFunctionType? = nil,
            getTopicAttributes: GetTopicAttributesFunctionType? = nil,
            listEndpointsByPlatformApplication: ListEndpointsByPlatformApplicationFunctionType? = nil,
            listOriginationNumbers: ListOriginationNumbersFunctionType? = nil,
            listPhoneNumbersOptedOut: ListPhoneNumbersOptedOutFunctionType? = nil,
            listPlatformApplications: ListPlatformApplicationsFunctionType? = nil,
            listSMSSandboxPhoneNumbers: ListSMSSandboxPhoneNumbersFunctionType? = nil,
            listSubscriptions: ListSubscriptionsFunctionType? = nil,
            listSubscriptionsByTopic: ListSubscriptionsByTopicFunctionType? = nil,
            listTagsForResource: ListTagsForResourceFunctionType? = nil,
            listTopics: ListTopicsFunctionType? = nil,
            optInPhoneNumber: OptInPhoneNumberFunctionType? = nil,
            publish: PublishFunctionType? = nil,
            publishBatch: PublishBatchFunctionType? = nil,
            putDataProtectionPolicy: PutDataProtectionPolicyFunctionType? = nil,
            removePermission: RemovePermissionFunctionType? = nil,
            setEndpointAttributes: SetEndpointAttributesFunctionType? = nil,
            setPlatformApplicationAttributes: SetPlatformApplicationAttributesFunctionType? = nil,
            setSMSAttributes: SetSMSAttributesFunctionType? = nil,
            setSubscriptionAttributes: SetSubscriptionAttributesFunctionType? = nil,
            setTopicAttributes: SetTopicAttributesFunctionType? = nil,
            subscribe: SubscribeFunctionType? = nil,
            tagResource: TagResourceFunctionType? = nil,
            unsubscribe: UnsubscribeFunctionType? = nil,
            untagResource: UntagResourceFunctionType? = nil,
            verifySMSSandboxPhoneNumber: VerifySMSSandboxPhoneNumberFunctionType? = nil) {
        self.addPermissionOverride = addPermission
        self.checkIfPhoneNumberIsOptedOutOverride = checkIfPhoneNumberIsOptedOut
        self.confirmSubscriptionOverride = confirmSubscription
        self.createPlatformApplicationOverride = createPlatformApplication
        self.createPlatformEndpointOverride = createPlatformEndpoint
        self.createSMSSandboxPhoneNumberOverride = createSMSSandboxPhoneNumber
        self.createTopicOverride = createTopic
        self.deleteEndpointOverride = deleteEndpoint
        self.deletePlatformApplicationOverride = deletePlatformApplication
        self.deleteSMSSandboxPhoneNumberOverride = deleteSMSSandboxPhoneNumber
        self.deleteTopicOverride = deleteTopic
        self.getDataProtectionPolicyOverride = getDataProtectionPolicy
        self.getEndpointAttributesOverride = getEndpointAttributes
        self.getPlatformApplicationAttributesOverride = getPlatformApplicationAttributes
        self.getSMSAttributesOverride = getSMSAttributes
        self.getSMSSandboxAccountStatusOverride = getSMSSandboxAccountStatus
        self.getSubscriptionAttributesOverride = getSubscriptionAttributes
        self.getTopicAttributesOverride = getTopicAttributes
        self.listEndpointsByPlatformApplicationOverride = listEndpointsByPlatformApplication
        self.listOriginationNumbersOverride = listOriginationNumbers
        self.listPhoneNumbersOptedOutOverride = listPhoneNumbersOptedOut
        self.listPlatformApplicationsOverride = listPlatformApplications
        self.listSMSSandboxPhoneNumbersOverride = listSMSSandboxPhoneNumbers
        self.listSubscriptionsOverride = listSubscriptions
        self.listSubscriptionsByTopicOverride = listSubscriptionsByTopic
        self.listTagsForResourceOverride = listTagsForResource
        self.listTopicsOverride = listTopics
        self.optInPhoneNumberOverride = optInPhoneNumber
        self.publishOverride = publish
        self.publishBatchOverride = publishBatch
        self.putDataProtectionPolicyOverride = putDataProtectionPolicy
        self.removePermissionOverride = removePermission
        self.setEndpointAttributesOverride = setEndpointAttributes
        self.setPlatformApplicationAttributesOverride = setPlatformApplicationAttributes
        self.setSMSAttributesOverride = setSMSAttributes
        self.setSubscriptionAttributesOverride = setSubscriptionAttributes
        self.setTopicAttributesOverride = setTopicAttributes
        self.subscribeOverride = subscribe
        self.tagResourceOverride = tagResource
        self.unsubscribeOverride = unsubscribe
        self.untagResourceOverride = untagResource
        self.verifySMSSandboxPhoneNumberOverride = verifySMSSandboxPhoneNumber
    }

    /**
     Invokes the AddPermission operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func addPermission(
            input: SimpleNotificationModel.AddPermissionInput) async throws {
        if let addPermissionOverride = addPermissionOverride {
            return try await addPermissionOverride(input)
        }

    }

    /**
     Invokes the CheckIfPhoneNumberIsOptedOut operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CheckIfPhoneNumberIsOptedOutInput object being passed to this operation.
     - Returns: The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func checkIfPhoneNumberIsOptedOut(
            input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput) async throws -> SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut {
        if let checkIfPhoneNumberIsOptedOutOverride = checkIfPhoneNumberIsOptedOutOverride {
            return try await checkIfPhoneNumberIsOptedOutOverride(input)
        }

        return CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut.__default
    }

    /**
     Invokes the ConfirmSubscription operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ConfirmSubscriptionInput object being passed to this operation.
     - Returns: The ConfirmSubscriptionResponseForConfirmSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, subscriptionLimitExceeded.
     */
    public func confirmSubscription(
            input: SimpleNotificationModel.ConfirmSubscriptionInput) async throws -> SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription {
        if let confirmSubscriptionOverride = confirmSubscriptionOverride {
            return try await confirmSubscriptionOverride(input)
        }

        return ConfirmSubscriptionResponseForConfirmSubscription.__default
    }

    /**
     Invokes the CreatePlatformApplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreatePlatformApplicationInput object being passed to this operation.
     - Returns: The CreatePlatformApplicationResponseForCreatePlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func createPlatformApplication(
            input: SimpleNotificationModel.CreatePlatformApplicationInput) async throws -> SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication {
        if let createPlatformApplicationOverride = createPlatformApplicationOverride {
            return try await createPlatformApplicationOverride(input)
        }

        return CreatePlatformApplicationResponseForCreatePlatformApplication.__default
    }

    /**
     Invokes the CreatePlatformEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreatePlatformEndpointInput object being passed to this operation.
     - Returns: The CreateEndpointResponseForCreatePlatformEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func createPlatformEndpoint(
            input: SimpleNotificationModel.CreatePlatformEndpointInput) async throws -> SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint {
        if let createPlatformEndpointOverride = createPlatformEndpointOverride {
            return try await createPlatformEndpointOverride(input)
        }

        return CreateEndpointResponseForCreatePlatformEndpoint.__default
    }

    /**
     Invokes the CreateSMSSandboxPhoneNumber operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateSMSSandboxPhoneNumberInput object being passed to this operation.
     - Returns: The CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, optedOut, throttled, userError.
     */
    public func createSMSSandboxPhoneNumber(
            input: SimpleNotificationModel.CreateSMSSandboxPhoneNumberInput) async throws -> SimpleNotificationModel.CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber {
        if let createSMSSandboxPhoneNumberOverride = createSMSSandboxPhoneNumberOverride {
            return try await createSMSSandboxPhoneNumberOverride(input)
        }

        return CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber.__default
    }

    /**
     Invokes the CreateTopic operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTopicInput object being passed to this operation.
     - Returns: The CreateTopicResponseForCreateTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, invalidSecurity, staleTag, tagLimitExceeded, tagPolicy, topicLimitExceeded.
     */
    public func createTopic(
            input: SimpleNotificationModel.CreateTopicInput) async throws -> SimpleNotificationModel.CreateTopicResponseForCreateTopic {
        if let createTopicOverride = createTopicOverride {
            return try await createTopicOverride(input)
        }

        return CreateTopicResponseForCreateTopic.__default
    }

    /**
     Invokes the DeleteEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func deleteEndpoint(
            input: SimpleNotificationModel.DeleteEndpointInput) async throws {
        if let deleteEndpointOverride = deleteEndpointOverride {
            return try await deleteEndpointOverride(input)
        }

    }

    /**
     Invokes the DeletePlatformApplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func deletePlatformApplication(
            input: SimpleNotificationModel.DeletePlatformApplicationInput) async throws {
        if let deletePlatformApplicationOverride = deletePlatformApplicationOverride {
            return try await deletePlatformApplicationOverride(input)
        }

    }

    /**
     Invokes the DeleteSMSSandboxPhoneNumber operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteSMSSandboxPhoneNumberInput object being passed to this operation.
     - Returns: The DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, resourceNotFound, throttled, userError.
     */
    public func deleteSMSSandboxPhoneNumber(
            input: SimpleNotificationModel.DeleteSMSSandboxPhoneNumberInput) async throws -> SimpleNotificationModel.DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber {
        if let deleteSMSSandboxPhoneNumberOverride = deleteSMSSandboxPhoneNumberOverride {
            return try await deleteSMSSandboxPhoneNumberOverride(input)
        }

        return DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber.__default
    }

    /**
     Invokes the DeleteTopic operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, notFound, staleTag, tagPolicy.
     */
    public func deleteTopic(
            input: SimpleNotificationModel.DeleteTopicInput) async throws {
        if let deleteTopicOverride = deleteTopicOverride {
            return try await deleteTopicOverride(input)
        }

    }

    /**
     Invokes the GetDataProtectionPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetDataProtectionPolicyInput object being passed to this operation.
     - Returns: The GetDataProtectionPolicyResponseForGetDataProtectionPolicy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func getDataProtectionPolicy(
            input: SimpleNotificationModel.GetDataProtectionPolicyInput) async throws -> SimpleNotificationModel.GetDataProtectionPolicyResponseForGetDataProtectionPolicy {
        if let getDataProtectionPolicyOverride = getDataProtectionPolicyOverride {
            return try await getDataProtectionPolicyOverride(input)
        }

        return GetDataProtectionPolicyResponseForGetDataProtectionPolicy.__default
    }

    /**
     Invokes the GetEndpointAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetEndpointAttributesInput object being passed to this operation.
     - Returns: The GetEndpointAttributesResponseForGetEndpointAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getEndpointAttributes(
            input: SimpleNotificationModel.GetEndpointAttributesInput) async throws -> SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes {
        if let getEndpointAttributesOverride = getEndpointAttributesOverride {
            return try await getEndpointAttributesOverride(input)
        }

        return GetEndpointAttributesResponseForGetEndpointAttributes.__default
    }

    /**
     Invokes the GetPlatformApplicationAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetPlatformApplicationAttributesInput object being passed to this operation.
     - Returns: The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getPlatformApplicationAttributes(
            input: SimpleNotificationModel.GetPlatformApplicationAttributesInput) async throws -> SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes {
        if let getPlatformApplicationAttributesOverride = getPlatformApplicationAttributesOverride {
            return try await getPlatformApplicationAttributesOverride(input)
        }

        return GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes.__default
    }

    /**
     Invokes the GetSMSAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetSMSAttributesInput object being passed to this operation.
     - Returns: The GetSMSAttributesResponseForGetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func getSMSAttributes(
            input: SimpleNotificationModel.GetSMSAttributesInput) async throws -> SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes {
        if let getSMSAttributesOverride = getSMSAttributesOverride {
            return try await getSMSAttributesOverride(input)
        }

        return GetSMSAttributesResponseForGetSMSAttributes.__default
    }

    /**
     Invokes the GetSMSSandboxAccountStatus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetSMSSandboxAccountStatusInput object being passed to this operation.
     - Returns: The GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, throttled.
     */
    public func getSMSSandboxAccountStatus(
            input: SimpleNotificationModel.GetSMSSandboxAccountStatusInput) async throws -> SimpleNotificationModel.GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus {
        if let getSMSSandboxAccountStatusOverride = getSMSSandboxAccountStatusOverride {
            return try await getSMSSandboxAccountStatusOverride(input)
        }

        return GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus.__default
    }

    /**
     Invokes the GetSubscriptionAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetSubscriptionAttributesInput object being passed to this operation.
     - Returns: The GetSubscriptionAttributesResponseForGetSubscriptionAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getSubscriptionAttributes(
            input: SimpleNotificationModel.GetSubscriptionAttributesInput) async throws -> SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes {
        if let getSubscriptionAttributesOverride = getSubscriptionAttributesOverride {
            return try await getSubscriptionAttributesOverride(input)
        }

        return GetSubscriptionAttributesResponseForGetSubscriptionAttributes.__default
    }

    /**
     Invokes the GetTopicAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTopicAttributesInput object being passed to this operation.
     - Returns: The GetTopicAttributesResponseForGetTopicAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func getTopicAttributes(
            input: SimpleNotificationModel.GetTopicAttributesInput) async throws -> SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes {
        if let getTopicAttributesOverride = getTopicAttributesOverride {
            return try await getTopicAttributesOverride(input)
        }

        return GetTopicAttributesResponseForGetTopicAttributes.__default
    }

    /**
     Invokes the ListEndpointsByPlatformApplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListEndpointsByPlatformApplicationInput object being passed to this operation.
     - Returns: The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func listEndpointsByPlatformApplication(
            input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput) async throws -> SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication {
        if let listEndpointsByPlatformApplicationOverride = listEndpointsByPlatformApplicationOverride {
            return try await listEndpointsByPlatformApplicationOverride(input)
        }

        return ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication.__default
    }

    /**
     Invokes the ListOriginationNumbers operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListOriginationNumbersRequest object being passed to this operation.
     - Returns: The ListOriginationNumbersResultForListOriginationNumbers object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled, validation.
     */
    public func listOriginationNumbers(
            input: SimpleNotificationModel.ListOriginationNumbersRequest) async throws -> SimpleNotificationModel.ListOriginationNumbersResultForListOriginationNumbers {
        if let listOriginationNumbersOverride = listOriginationNumbersOverride {
            return try await listOriginationNumbersOverride(input)
        }

        return ListOriginationNumbersResultForListOriginationNumbers.__default
    }

    /**
     Invokes the ListPhoneNumbersOptedOut operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListPhoneNumbersOptedOutInput object being passed to this operation.
     - Returns: The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func listPhoneNumbersOptedOut(
            input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput) async throws -> SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut {
        if let listPhoneNumbersOptedOutOverride = listPhoneNumbersOptedOutOverride {
            return try await listPhoneNumbersOptedOutOverride(input)
        }

        return ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut.__default
    }

    /**
     Invokes the ListPlatformApplications operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListPlatformApplicationsInput object being passed to this operation.
     - Returns: The ListPlatformApplicationsResponseForListPlatformApplications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func listPlatformApplications(
            input: SimpleNotificationModel.ListPlatformApplicationsInput) async throws -> SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications {
        if let listPlatformApplicationsOverride = listPlatformApplicationsOverride {
            return try await listPlatformApplicationsOverride(input)
        }

        return ListPlatformApplicationsResponseForListPlatformApplications.__default
    }

    /**
     Invokes the ListSMSSandboxPhoneNumbers operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListSMSSandboxPhoneNumbersInput object being passed to this operation.
     - Returns: The ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, resourceNotFound, throttled.
     */
    public func listSMSSandboxPhoneNumbers(
            input: SimpleNotificationModel.ListSMSSandboxPhoneNumbersInput) async throws -> SimpleNotificationModel.ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers {
        if let listSMSSandboxPhoneNumbersOverride = listSMSSandboxPhoneNumbersOverride {
            return try await listSMSSandboxPhoneNumbersOverride(input)
        }

        return ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers.__default
    }

    /**
     Invokes the ListSubscriptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListSubscriptionsInput object being passed to this operation.
     - Returns: The ListSubscriptionsResponseForListSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func listSubscriptions(
            input: SimpleNotificationModel.ListSubscriptionsInput) async throws -> SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions {
        if let listSubscriptionsOverride = listSubscriptionsOverride {
            return try await listSubscriptionsOverride(input)
        }

        return ListSubscriptionsResponseForListSubscriptions.__default
    }

    /**
     Invokes the ListSubscriptionsByTopic operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListSubscriptionsByTopicInput object being passed to this operation.
     - Returns: The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func listSubscriptionsByTopic(
            input: SimpleNotificationModel.ListSubscriptionsByTopicInput) async throws -> SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic {
        if let listSubscriptionsByTopicOverride = listSubscriptionsByTopicOverride {
            return try await listSubscriptionsByTopicOverride(input)
        }

        return ListSubscriptionsByTopicResponseForListSubscriptionsByTopic.__default
    }

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponseForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, tagPolicy.
     */
    public func listTagsForResource(
            input: SimpleNotificationModel.ListTagsForResourceRequest) async throws -> SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource {
        if let listTagsForResourceOverride = listTagsForResourceOverride {
            return try await listTagsForResourceOverride(input)
        }

        return ListTagsForResourceResponseForListTagsForResource.__default
    }

    /**
     Invokes the ListTopics operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTopicsInput object being passed to this operation.
     - Returns: The ListTopicsResponseForListTopics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func listTopics(
            input: SimpleNotificationModel.ListTopicsInput) async throws -> SimpleNotificationModel.ListTopicsResponseForListTopics {
        if let listTopicsOverride = listTopicsOverride {
            return try await listTopicsOverride(input)
        }

        return ListTopicsResponseForListTopics.__default
    }

    /**
     Invokes the OptInPhoneNumber operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated OptInPhoneNumberInput object being passed to this operation.
     - Returns: The OptInPhoneNumberResponseForOptInPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func optInPhoneNumber(
            input: SimpleNotificationModel.OptInPhoneNumberInput) async throws -> SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber {
        if let optInPhoneNumberOverride = optInPhoneNumberOverride {
            return try await optInPhoneNumberOverride(input)
        }

        return OptInPhoneNumberResponseForOptInPhoneNumber.__default
    }

    /**
     Invokes the Publish operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PublishInput object being passed to this operation.
     - Returns: The PublishResponseForPublish object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, endpointDisabled, internalError, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled, validation.
     */
    public func publish(
            input: SimpleNotificationModel.PublishInput) async throws -> SimpleNotificationModel.PublishResponseForPublish {
        if let publishOverride = publishOverride {
            return try await publishOverride(input)
        }

        return PublishResponseForPublish.__default
    }

    /**
     Invokes the PublishBatch operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PublishBatchInput object being passed to this operation.
     - Returns: The PublishBatchResponseForPublishBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, batchEntryIdsNotDistinct, batchRequestTooLong, emptyBatchRequest, endpointDisabled, internalError, invalidBatchEntryId, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled, tooManyEntriesInBatchRequest, validation.
     */
    public func publishBatch(
            input: SimpleNotificationModel.PublishBatchInput) async throws -> SimpleNotificationModel.PublishBatchResponseForPublishBatch {
        if let publishBatchOverride = publishBatchOverride {
            return try await publishBatchOverride(input)
        }

        return PublishBatchResponseForPublishBatch.__default
    }

    /**
     Invokes the PutDataProtectionPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutDataProtectionPolicyInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func putDataProtectionPolicy(
            input: SimpleNotificationModel.PutDataProtectionPolicyInput) async throws {
        if let putDataProtectionPolicyOverride = putDataProtectionPolicyOverride {
            return try await putDataProtectionPolicyOverride(input)
        }

    }

    /**
     Invokes the RemovePermission operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func removePermission(
            input: SimpleNotificationModel.RemovePermissionInput) async throws {
        if let removePermissionOverride = removePermissionOverride {
            return try await removePermissionOverride(input)
        }

    }

    /**
     Invokes the SetEndpointAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setEndpointAttributes(
            input: SimpleNotificationModel.SetEndpointAttributesInput) async throws {
        if let setEndpointAttributesOverride = setEndpointAttributesOverride {
            return try await setEndpointAttributesOverride(input)
        }

    }

    /**
     Invokes the SetPlatformApplicationAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setPlatformApplicationAttributes(
            input: SimpleNotificationModel.SetPlatformApplicationAttributesInput) async throws {
        if let setPlatformApplicationAttributesOverride = setPlatformApplicationAttributesOverride {
            return try await setPlatformApplicationAttributesOverride(input)
        }

    }

    /**
     Invokes the SetSMSAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetSMSAttributesInput object being passed to this operation.
     - Returns: The SetSMSAttributesResponseForSetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func setSMSAttributes(
            input: SimpleNotificationModel.SetSMSAttributesInput) async throws -> SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes {
        if let setSMSAttributesOverride = setSMSAttributesOverride {
            return try await setSMSAttributesOverride(input)
        }

        return SetSMSAttributesResponseForSetSMSAttributes.__default
    }

    /**
     Invokes the SetSubscriptionAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound.
     */
    public func setSubscriptionAttributes(
            input: SimpleNotificationModel.SetSubscriptionAttributesInput) async throws {
        if let setSubscriptionAttributesOverride = setSubscriptionAttributesOverride {
            return try await setSubscriptionAttributesOverride(input)
        }

    }

    /**
     Invokes the SetTopicAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func setTopicAttributes(
            input: SimpleNotificationModel.SetTopicAttributesInput) async throws {
        if let setTopicAttributesOverride = setTopicAttributesOverride {
            return try await setTopicAttributesOverride(input)
        }

    }

    /**
     Invokes the Subscribe operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SubscribeInput object being passed to this operation.
     - Returns: The SubscribeResponseForSubscribe object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, invalidSecurity, notFound, subscriptionLimitExceeded.
     */
    public func subscribe(
            input: SimpleNotificationModel.SubscribeInput) async throws -> SimpleNotificationModel.SubscribeResponseForSubscribe {
        if let subscribeOverride = subscribeOverride {
            return try await subscribeOverride(input)
        }

        return SubscribeResponseForSubscribe.__default
    }

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponseForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    public func tagResource(
            input: SimpleNotificationModel.TagResourceRequest) async throws -> SimpleNotificationModel.TagResourceResponseForTagResource {
        if let tagResourceOverride = tagResourceOverride {
            return try await tagResourceOverride(input)
        }

        return TagResourceResponseForTagResource.__default
    }

    /**
     Invokes the Unsubscribe operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func unsubscribe(
            input: SimpleNotificationModel.UnsubscribeInput) async throws {
        if let unsubscribeOverride = unsubscribeOverride {
            return try await unsubscribeOverride(input)
        }

    }

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponseForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    public func untagResource(
            input: SimpleNotificationModel.UntagResourceRequest) async throws -> SimpleNotificationModel.UntagResourceResponseForUntagResource {
        if let untagResourceOverride = untagResourceOverride {
            return try await untagResourceOverride(input)
        }

        return UntagResourceResponseForUntagResource.__default
    }

    /**
     Invokes the VerifySMSSandboxPhoneNumber operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated VerifySMSSandboxPhoneNumberInput object being passed to this operation.
     - Returns: The VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, resourceNotFound, throttled, verification.
     */
    public func verifySMSSandboxPhoneNumber(
            input: SimpleNotificationModel.VerifySMSSandboxPhoneNumberInput) async throws -> SimpleNotificationModel.VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber {
        if let verifySMSSandboxPhoneNumberOverride = verifySMSSandboxPhoneNumberOverride {
            return try await verifySMSSandboxPhoneNumberOverride(input)
        }

        return VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber.__default
    }
#endif
}
