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
// ThrowingSimpleNotificationClient.swift
// SimpleNotificationClient
//

import Foundation
import SimpleNotificationModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the SimpleNotification service that by default always throws from its methods.
 */
public struct ThrowingSimpleNotificationClient: SimpleNotificationClientProtocol {
    let error: SimpleNotificationError
    let addPermissionAsyncOverride: AddPermissionAsyncType?
    let addPermissionSyncOverride: AddPermissionSyncType?
    let checkIfPhoneNumberIsOptedOutAsyncOverride: CheckIfPhoneNumberIsOptedOutAsyncType?
    let checkIfPhoneNumberIsOptedOutSyncOverride: CheckIfPhoneNumberIsOptedOutSyncType?
    let confirmSubscriptionAsyncOverride: ConfirmSubscriptionAsyncType?
    let confirmSubscriptionSyncOverride: ConfirmSubscriptionSyncType?
    let createPlatformApplicationAsyncOverride: CreatePlatformApplicationAsyncType?
    let createPlatformApplicationSyncOverride: CreatePlatformApplicationSyncType?
    let createPlatformEndpointAsyncOverride: CreatePlatformEndpointAsyncType?
    let createPlatformEndpointSyncOverride: CreatePlatformEndpointSyncType?
    let createSMSSandboxPhoneNumberAsyncOverride: CreateSMSSandboxPhoneNumberAsyncType?
    let createSMSSandboxPhoneNumberSyncOverride: CreateSMSSandboxPhoneNumberSyncType?
    let createTopicAsyncOverride: CreateTopicAsyncType?
    let createTopicSyncOverride: CreateTopicSyncType?
    let deleteEndpointAsyncOverride: DeleteEndpointAsyncType?
    let deleteEndpointSyncOverride: DeleteEndpointSyncType?
    let deletePlatformApplicationAsyncOverride: DeletePlatformApplicationAsyncType?
    let deletePlatformApplicationSyncOverride: DeletePlatformApplicationSyncType?
    let deleteSMSSandboxPhoneNumberAsyncOverride: DeleteSMSSandboxPhoneNumberAsyncType?
    let deleteSMSSandboxPhoneNumberSyncOverride: DeleteSMSSandboxPhoneNumberSyncType?
    let deleteTopicAsyncOverride: DeleteTopicAsyncType?
    let deleteTopicSyncOverride: DeleteTopicSyncType?
    let getDataProtectionPolicyAsyncOverride: GetDataProtectionPolicyAsyncType?
    let getDataProtectionPolicySyncOverride: GetDataProtectionPolicySyncType?
    let getEndpointAttributesAsyncOverride: GetEndpointAttributesAsyncType?
    let getEndpointAttributesSyncOverride: GetEndpointAttributesSyncType?
    let getPlatformApplicationAttributesAsyncOverride: GetPlatformApplicationAttributesAsyncType?
    let getPlatformApplicationAttributesSyncOverride: GetPlatformApplicationAttributesSyncType?
    let getSMSAttributesAsyncOverride: GetSMSAttributesAsyncType?
    let getSMSAttributesSyncOverride: GetSMSAttributesSyncType?
    let getSMSSandboxAccountStatusAsyncOverride: GetSMSSandboxAccountStatusAsyncType?
    let getSMSSandboxAccountStatusSyncOverride: GetSMSSandboxAccountStatusSyncType?
    let getSubscriptionAttributesAsyncOverride: GetSubscriptionAttributesAsyncType?
    let getSubscriptionAttributesSyncOverride: GetSubscriptionAttributesSyncType?
    let getTopicAttributesAsyncOverride: GetTopicAttributesAsyncType?
    let getTopicAttributesSyncOverride: GetTopicAttributesSyncType?
    let listEndpointsByPlatformApplicationAsyncOverride: ListEndpointsByPlatformApplicationAsyncType?
    let listEndpointsByPlatformApplicationSyncOverride: ListEndpointsByPlatformApplicationSyncType?
    let listOriginationNumbersAsyncOverride: ListOriginationNumbersAsyncType?
    let listOriginationNumbersSyncOverride: ListOriginationNumbersSyncType?
    let listPhoneNumbersOptedOutAsyncOverride: ListPhoneNumbersOptedOutAsyncType?
    let listPhoneNumbersOptedOutSyncOverride: ListPhoneNumbersOptedOutSyncType?
    let listPlatformApplicationsAsyncOverride: ListPlatformApplicationsAsyncType?
    let listPlatformApplicationsSyncOverride: ListPlatformApplicationsSyncType?
    let listSMSSandboxPhoneNumbersAsyncOverride: ListSMSSandboxPhoneNumbersAsyncType?
    let listSMSSandboxPhoneNumbersSyncOverride: ListSMSSandboxPhoneNumbersSyncType?
    let listSubscriptionsAsyncOverride: ListSubscriptionsAsyncType?
    let listSubscriptionsSyncOverride: ListSubscriptionsSyncType?
    let listSubscriptionsByTopicAsyncOverride: ListSubscriptionsByTopicAsyncType?
    let listSubscriptionsByTopicSyncOverride: ListSubscriptionsByTopicSyncType?
    let listTagsForResourceAsyncOverride: ListTagsForResourceAsyncType?
    let listTagsForResourceSyncOverride: ListTagsForResourceSyncType?
    let listTopicsAsyncOverride: ListTopicsAsyncType?
    let listTopicsSyncOverride: ListTopicsSyncType?
    let optInPhoneNumberAsyncOverride: OptInPhoneNumberAsyncType?
    let optInPhoneNumberSyncOverride: OptInPhoneNumberSyncType?
    let publishAsyncOverride: PublishAsyncType?
    let publishSyncOverride: PublishSyncType?
    let publishBatchAsyncOverride: PublishBatchAsyncType?
    let publishBatchSyncOverride: PublishBatchSyncType?
    let putDataProtectionPolicyAsyncOverride: PutDataProtectionPolicyAsyncType?
    let putDataProtectionPolicySyncOverride: PutDataProtectionPolicySyncType?
    let removePermissionAsyncOverride: RemovePermissionAsyncType?
    let removePermissionSyncOverride: RemovePermissionSyncType?
    let setEndpointAttributesAsyncOverride: SetEndpointAttributesAsyncType?
    let setEndpointAttributesSyncOverride: SetEndpointAttributesSyncType?
    let setPlatformApplicationAttributesAsyncOverride: SetPlatformApplicationAttributesAsyncType?
    let setPlatformApplicationAttributesSyncOverride: SetPlatformApplicationAttributesSyncType?
    let setSMSAttributesAsyncOverride: SetSMSAttributesAsyncType?
    let setSMSAttributesSyncOverride: SetSMSAttributesSyncType?
    let setSubscriptionAttributesAsyncOverride: SetSubscriptionAttributesAsyncType?
    let setSubscriptionAttributesSyncOverride: SetSubscriptionAttributesSyncType?
    let setTopicAttributesAsyncOverride: SetTopicAttributesAsyncType?
    let setTopicAttributesSyncOverride: SetTopicAttributesSyncType?
    let subscribeAsyncOverride: SubscribeAsyncType?
    let subscribeSyncOverride: SubscribeSyncType?
    let tagResourceAsyncOverride: TagResourceAsyncType?
    let tagResourceSyncOverride: TagResourceSyncType?
    let unsubscribeAsyncOverride: UnsubscribeAsyncType?
    let unsubscribeSyncOverride: UnsubscribeSyncType?
    let untagResourceAsyncOverride: UntagResourceAsyncType?
    let untagResourceSyncOverride: UntagResourceSyncType?
    let verifySMSSandboxPhoneNumberAsyncOverride: VerifySMSSandboxPhoneNumberAsyncType?
    let verifySMSSandboxPhoneNumberSyncOverride: VerifySMSSandboxPhoneNumberSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: SimpleNotificationError,
            addPermissionAsync: AddPermissionAsyncType? = nil,
            addPermissionSync: AddPermissionSyncType? = nil,
            checkIfPhoneNumberIsOptedOutAsync: CheckIfPhoneNumberIsOptedOutAsyncType? = nil,
            checkIfPhoneNumberIsOptedOutSync: CheckIfPhoneNumberIsOptedOutSyncType? = nil,
            confirmSubscriptionAsync: ConfirmSubscriptionAsyncType? = nil,
            confirmSubscriptionSync: ConfirmSubscriptionSyncType? = nil,
            createPlatformApplicationAsync: CreatePlatformApplicationAsyncType? = nil,
            createPlatformApplicationSync: CreatePlatformApplicationSyncType? = nil,
            createPlatformEndpointAsync: CreatePlatformEndpointAsyncType? = nil,
            createPlatformEndpointSync: CreatePlatformEndpointSyncType? = nil,
            createSMSSandboxPhoneNumberAsync: CreateSMSSandboxPhoneNumberAsyncType? = nil,
            createSMSSandboxPhoneNumberSync: CreateSMSSandboxPhoneNumberSyncType? = nil,
            createTopicAsync: CreateTopicAsyncType? = nil,
            createTopicSync: CreateTopicSyncType? = nil,
            deleteEndpointAsync: DeleteEndpointAsyncType? = nil,
            deleteEndpointSync: DeleteEndpointSyncType? = nil,
            deletePlatformApplicationAsync: DeletePlatformApplicationAsyncType? = nil,
            deletePlatformApplicationSync: DeletePlatformApplicationSyncType? = nil,
            deleteSMSSandboxPhoneNumberAsync: DeleteSMSSandboxPhoneNumberAsyncType? = nil,
            deleteSMSSandboxPhoneNumberSync: DeleteSMSSandboxPhoneNumberSyncType? = nil,
            deleteTopicAsync: DeleteTopicAsyncType? = nil,
            deleteTopicSync: DeleteTopicSyncType? = nil,
            getDataProtectionPolicyAsync: GetDataProtectionPolicyAsyncType? = nil,
            getDataProtectionPolicySync: GetDataProtectionPolicySyncType? = nil,
            getEndpointAttributesAsync: GetEndpointAttributesAsyncType? = nil,
            getEndpointAttributesSync: GetEndpointAttributesSyncType? = nil,
            getPlatformApplicationAttributesAsync: GetPlatformApplicationAttributesAsyncType? = nil,
            getPlatformApplicationAttributesSync: GetPlatformApplicationAttributesSyncType? = nil,
            getSMSAttributesAsync: GetSMSAttributesAsyncType? = nil,
            getSMSAttributesSync: GetSMSAttributesSyncType? = nil,
            getSMSSandboxAccountStatusAsync: GetSMSSandboxAccountStatusAsyncType? = nil,
            getSMSSandboxAccountStatusSync: GetSMSSandboxAccountStatusSyncType? = nil,
            getSubscriptionAttributesAsync: GetSubscriptionAttributesAsyncType? = nil,
            getSubscriptionAttributesSync: GetSubscriptionAttributesSyncType? = nil,
            getTopicAttributesAsync: GetTopicAttributesAsyncType? = nil,
            getTopicAttributesSync: GetTopicAttributesSyncType? = nil,
            listEndpointsByPlatformApplicationAsync: ListEndpointsByPlatformApplicationAsyncType? = nil,
            listEndpointsByPlatformApplicationSync: ListEndpointsByPlatformApplicationSyncType? = nil,
            listOriginationNumbersAsync: ListOriginationNumbersAsyncType? = nil,
            listOriginationNumbersSync: ListOriginationNumbersSyncType? = nil,
            listPhoneNumbersOptedOutAsync: ListPhoneNumbersOptedOutAsyncType? = nil,
            listPhoneNumbersOptedOutSync: ListPhoneNumbersOptedOutSyncType? = nil,
            listPlatformApplicationsAsync: ListPlatformApplicationsAsyncType? = nil,
            listPlatformApplicationsSync: ListPlatformApplicationsSyncType? = nil,
            listSMSSandboxPhoneNumbersAsync: ListSMSSandboxPhoneNumbersAsyncType? = nil,
            listSMSSandboxPhoneNumbersSync: ListSMSSandboxPhoneNumbersSyncType? = nil,
            listSubscriptionsAsync: ListSubscriptionsAsyncType? = nil,
            listSubscriptionsSync: ListSubscriptionsSyncType? = nil,
            listSubscriptionsByTopicAsync: ListSubscriptionsByTopicAsyncType? = nil,
            listSubscriptionsByTopicSync: ListSubscriptionsByTopicSyncType? = nil,
            listTagsForResourceAsync: ListTagsForResourceAsyncType? = nil,
            listTagsForResourceSync: ListTagsForResourceSyncType? = nil,
            listTopicsAsync: ListTopicsAsyncType? = nil,
            listTopicsSync: ListTopicsSyncType? = nil,
            optInPhoneNumberAsync: OptInPhoneNumberAsyncType? = nil,
            optInPhoneNumberSync: OptInPhoneNumberSyncType? = nil,
            publishAsync: PublishAsyncType? = nil,
            publishSync: PublishSyncType? = nil,
            publishBatchAsync: PublishBatchAsyncType? = nil,
            publishBatchSync: PublishBatchSyncType? = nil,
            putDataProtectionPolicyAsync: PutDataProtectionPolicyAsyncType? = nil,
            putDataProtectionPolicySync: PutDataProtectionPolicySyncType? = nil,
            removePermissionAsync: RemovePermissionAsyncType? = nil,
            removePermissionSync: RemovePermissionSyncType? = nil,
            setEndpointAttributesAsync: SetEndpointAttributesAsyncType? = nil,
            setEndpointAttributesSync: SetEndpointAttributesSyncType? = nil,
            setPlatformApplicationAttributesAsync: SetPlatformApplicationAttributesAsyncType? = nil,
            setPlatformApplicationAttributesSync: SetPlatformApplicationAttributesSyncType? = nil,
            setSMSAttributesAsync: SetSMSAttributesAsyncType? = nil,
            setSMSAttributesSync: SetSMSAttributesSyncType? = nil,
            setSubscriptionAttributesAsync: SetSubscriptionAttributesAsyncType? = nil,
            setSubscriptionAttributesSync: SetSubscriptionAttributesSyncType? = nil,
            setTopicAttributesAsync: SetTopicAttributesAsyncType? = nil,
            setTopicAttributesSync: SetTopicAttributesSyncType? = nil,
            subscribeAsync: SubscribeAsyncType? = nil,
            subscribeSync: SubscribeSyncType? = nil,
            tagResourceAsync: TagResourceAsyncType? = nil,
            tagResourceSync: TagResourceSyncType? = nil,
            unsubscribeAsync: UnsubscribeAsyncType? = nil,
            unsubscribeSync: UnsubscribeSyncType? = nil,
            untagResourceAsync: UntagResourceAsyncType? = nil,
            untagResourceSync: UntagResourceSyncType? = nil,
            verifySMSSandboxPhoneNumberAsync: VerifySMSSandboxPhoneNumberAsyncType? = nil,
            verifySMSSandboxPhoneNumberSync: VerifySMSSandboxPhoneNumberSyncType? = nil) {
        self.error = error
        self.addPermissionAsyncOverride = addPermissionAsync
        self.addPermissionSyncOverride = addPermissionSync
        self.checkIfPhoneNumberIsOptedOutAsyncOverride = checkIfPhoneNumberIsOptedOutAsync
        self.checkIfPhoneNumberIsOptedOutSyncOverride = checkIfPhoneNumberIsOptedOutSync
        self.confirmSubscriptionAsyncOverride = confirmSubscriptionAsync
        self.confirmSubscriptionSyncOverride = confirmSubscriptionSync
        self.createPlatformApplicationAsyncOverride = createPlatformApplicationAsync
        self.createPlatformApplicationSyncOverride = createPlatformApplicationSync
        self.createPlatformEndpointAsyncOverride = createPlatformEndpointAsync
        self.createPlatformEndpointSyncOverride = createPlatformEndpointSync
        self.createSMSSandboxPhoneNumberAsyncOverride = createSMSSandboxPhoneNumberAsync
        self.createSMSSandboxPhoneNumberSyncOverride = createSMSSandboxPhoneNumberSync
        self.createTopicAsyncOverride = createTopicAsync
        self.createTopicSyncOverride = createTopicSync
        self.deleteEndpointAsyncOverride = deleteEndpointAsync
        self.deleteEndpointSyncOverride = deleteEndpointSync
        self.deletePlatformApplicationAsyncOverride = deletePlatformApplicationAsync
        self.deletePlatformApplicationSyncOverride = deletePlatformApplicationSync
        self.deleteSMSSandboxPhoneNumberAsyncOverride = deleteSMSSandboxPhoneNumberAsync
        self.deleteSMSSandboxPhoneNumberSyncOverride = deleteSMSSandboxPhoneNumberSync
        self.deleteTopicAsyncOverride = deleteTopicAsync
        self.deleteTopicSyncOverride = deleteTopicSync
        self.getDataProtectionPolicyAsyncOverride = getDataProtectionPolicyAsync
        self.getDataProtectionPolicySyncOverride = getDataProtectionPolicySync
        self.getEndpointAttributesAsyncOverride = getEndpointAttributesAsync
        self.getEndpointAttributesSyncOverride = getEndpointAttributesSync
        self.getPlatformApplicationAttributesAsyncOverride = getPlatformApplicationAttributesAsync
        self.getPlatformApplicationAttributesSyncOverride = getPlatformApplicationAttributesSync
        self.getSMSAttributesAsyncOverride = getSMSAttributesAsync
        self.getSMSAttributesSyncOverride = getSMSAttributesSync
        self.getSMSSandboxAccountStatusAsyncOverride = getSMSSandboxAccountStatusAsync
        self.getSMSSandboxAccountStatusSyncOverride = getSMSSandboxAccountStatusSync
        self.getSubscriptionAttributesAsyncOverride = getSubscriptionAttributesAsync
        self.getSubscriptionAttributesSyncOverride = getSubscriptionAttributesSync
        self.getTopicAttributesAsyncOverride = getTopicAttributesAsync
        self.getTopicAttributesSyncOverride = getTopicAttributesSync
        self.listEndpointsByPlatformApplicationAsyncOverride = listEndpointsByPlatformApplicationAsync
        self.listEndpointsByPlatformApplicationSyncOverride = listEndpointsByPlatformApplicationSync
        self.listOriginationNumbersAsyncOverride = listOriginationNumbersAsync
        self.listOriginationNumbersSyncOverride = listOriginationNumbersSync
        self.listPhoneNumbersOptedOutAsyncOverride = listPhoneNumbersOptedOutAsync
        self.listPhoneNumbersOptedOutSyncOverride = listPhoneNumbersOptedOutSync
        self.listPlatformApplicationsAsyncOverride = listPlatformApplicationsAsync
        self.listPlatformApplicationsSyncOverride = listPlatformApplicationsSync
        self.listSMSSandboxPhoneNumbersAsyncOverride = listSMSSandboxPhoneNumbersAsync
        self.listSMSSandboxPhoneNumbersSyncOverride = listSMSSandboxPhoneNumbersSync
        self.listSubscriptionsAsyncOverride = listSubscriptionsAsync
        self.listSubscriptionsSyncOverride = listSubscriptionsSync
        self.listSubscriptionsByTopicAsyncOverride = listSubscriptionsByTopicAsync
        self.listSubscriptionsByTopicSyncOverride = listSubscriptionsByTopicSync
        self.listTagsForResourceAsyncOverride = listTagsForResourceAsync
        self.listTagsForResourceSyncOverride = listTagsForResourceSync
        self.listTopicsAsyncOverride = listTopicsAsync
        self.listTopicsSyncOverride = listTopicsSync
        self.optInPhoneNumberAsyncOverride = optInPhoneNumberAsync
        self.optInPhoneNumberSyncOverride = optInPhoneNumberSync
        self.publishAsyncOverride = publishAsync
        self.publishSyncOverride = publishSync
        self.publishBatchAsyncOverride = publishBatchAsync
        self.publishBatchSyncOverride = publishBatchSync
        self.putDataProtectionPolicyAsyncOverride = putDataProtectionPolicyAsync
        self.putDataProtectionPolicySyncOverride = putDataProtectionPolicySync
        self.removePermissionAsyncOverride = removePermissionAsync
        self.removePermissionSyncOverride = removePermissionSync
        self.setEndpointAttributesAsyncOverride = setEndpointAttributesAsync
        self.setEndpointAttributesSyncOverride = setEndpointAttributesSync
        self.setPlatformApplicationAttributesAsyncOverride = setPlatformApplicationAttributesAsync
        self.setPlatformApplicationAttributesSyncOverride = setPlatformApplicationAttributesSync
        self.setSMSAttributesAsyncOverride = setSMSAttributesAsync
        self.setSMSAttributesSyncOverride = setSMSAttributesSync
        self.setSubscriptionAttributesAsyncOverride = setSubscriptionAttributesAsync
        self.setSubscriptionAttributesSyncOverride = setSubscriptionAttributesSync
        self.setTopicAttributesAsyncOverride = setTopicAttributesAsync
        self.setTopicAttributesSyncOverride = setTopicAttributesSync
        self.subscribeAsyncOverride = subscribeAsync
        self.subscribeSyncOverride = subscribeSync
        self.tagResourceAsyncOverride = tagResourceAsync
        self.tagResourceSyncOverride = tagResourceSync
        self.unsubscribeAsyncOverride = unsubscribeAsync
        self.unsubscribeSyncOverride = unsubscribeSync
        self.untagResourceAsyncOverride = untagResourceAsync
        self.untagResourceSyncOverride = untagResourceSync
        self.verifySMSSandboxPhoneNumberAsyncOverride = verifySMSSandboxPhoneNumberAsync
        self.verifySMSSandboxPhoneNumberSyncOverride = verifySMSSandboxPhoneNumberSync
    }

    /**
     Invokes the AddPermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func addPermissionAsync(
            input: SimpleNotificationModel.AddPermissionInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        if let addPermissionAsyncOverride = addPermissionAsyncOverride {
            return try addPermissionAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the AddPermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func addPermissionSync(
            input: SimpleNotificationModel.AddPermissionInput) throws {
        if let addPermissionSyncOverride = addPermissionSyncOverride {
            return try addPermissionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CheckIfPhoneNumberIsOptedOut operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CheckIfPhoneNumberIsOptedOutInput object being passed to this operation.
         - completion: The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut object or an error will be passed to this 
           callback when the operation is complete. The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    public func checkIfPhoneNumberIsOptedOutAsync(
            input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput, 
            completion: @escaping (Result<SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut, SimpleNotificationError>) -> ()) throws {
        if let checkIfPhoneNumberIsOptedOutAsyncOverride = checkIfPhoneNumberIsOptedOutAsyncOverride {
            return try checkIfPhoneNumberIsOptedOutAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CheckIfPhoneNumberIsOptedOut operation waiting for the response before returning.

     - Parameters:
         - input: The validated CheckIfPhoneNumberIsOptedOutInput object being passed to this operation.
     - Returns: The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func checkIfPhoneNumberIsOptedOutSync(
            input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput) throws -> SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut {
        if let checkIfPhoneNumberIsOptedOutSyncOverride = checkIfPhoneNumberIsOptedOutSyncOverride {
            return try checkIfPhoneNumberIsOptedOutSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ConfirmSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ConfirmSubscriptionInput object being passed to this operation.
         - completion: The ConfirmSubscriptionResponseForConfirmSubscription object or an error will be passed to this 
           callback when the operation is complete. The ConfirmSubscriptionResponseForConfirmSubscription
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, replayLimitExceeded, subscriptionLimitExceeded.
     */
    public func confirmSubscriptionAsync(
            input: SimpleNotificationModel.ConfirmSubscriptionInput, 
            completion: @escaping (Result<SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription, SimpleNotificationError>) -> ()) throws {
        if let confirmSubscriptionAsyncOverride = confirmSubscriptionAsyncOverride {
            return try confirmSubscriptionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ConfirmSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated ConfirmSubscriptionInput object being passed to this operation.
     - Returns: The ConfirmSubscriptionResponseForConfirmSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, replayLimitExceeded, subscriptionLimitExceeded.
     */
    public func confirmSubscriptionSync(
            input: SimpleNotificationModel.ConfirmSubscriptionInput) throws -> SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription {
        if let confirmSubscriptionSyncOverride = confirmSubscriptionSyncOverride {
            return try confirmSubscriptionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreatePlatformApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePlatformApplicationInput object being passed to this operation.
         - completion: The CreatePlatformApplicationResponseForCreatePlatformApplication object or an error will be passed to this 
           callback when the operation is complete. The CreatePlatformApplicationResponseForCreatePlatformApplication
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func createPlatformApplicationAsync(
            input: SimpleNotificationModel.CreatePlatformApplicationInput, 
            completion: @escaping (Result<SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication, SimpleNotificationError>) -> ()) throws {
        if let createPlatformApplicationAsyncOverride = createPlatformApplicationAsyncOverride {
            return try createPlatformApplicationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreatePlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlatformApplicationInput object being passed to this operation.
     - Returns: The CreatePlatformApplicationResponseForCreatePlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func createPlatformApplicationSync(
            input: SimpleNotificationModel.CreatePlatformApplicationInput) throws -> SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication {
        if let createPlatformApplicationSyncOverride = createPlatformApplicationSyncOverride {
            return try createPlatformApplicationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreatePlatformEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePlatformEndpointInput object being passed to this operation.
         - completion: The CreateEndpointResponseForCreatePlatformEndpoint object or an error will be passed to this 
           callback when the operation is complete. The CreateEndpointResponseForCreatePlatformEndpoint
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func createPlatformEndpointAsync(
            input: SimpleNotificationModel.CreatePlatformEndpointInput, 
            completion: @escaping (Result<SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint, SimpleNotificationError>) -> ()) throws {
        if let createPlatformEndpointAsyncOverride = createPlatformEndpointAsyncOverride {
            return try createPlatformEndpointAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreatePlatformEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlatformEndpointInput object being passed to this operation.
     - Returns: The CreateEndpointResponseForCreatePlatformEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func createPlatformEndpointSync(
            input: SimpleNotificationModel.CreatePlatformEndpointInput) throws -> SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint {
        if let createPlatformEndpointSyncOverride = createPlatformEndpointSyncOverride {
            return try createPlatformEndpointSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateSMSSandboxPhoneNumber operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSMSSandboxPhoneNumberInput object being passed to this operation.
         - completion: The CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber object or an error will be passed to this 
           callback when the operation is complete. The CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, optedOut, throttled, userError.
     */
    public func createSMSSandboxPhoneNumberAsync(
            input: SimpleNotificationModel.CreateSMSSandboxPhoneNumberInput, 
            completion: @escaping (Result<SimpleNotificationModel.CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber, SimpleNotificationError>) -> ()) throws {
        if let createSMSSandboxPhoneNumberAsyncOverride = createSMSSandboxPhoneNumberAsyncOverride {
            return try createSMSSandboxPhoneNumberAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateSMSSandboxPhoneNumber operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSMSSandboxPhoneNumberInput object being passed to this operation.
     - Returns: The CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, optedOut, throttled, userError.
     */
    public func createSMSSandboxPhoneNumberSync(
            input: SimpleNotificationModel.CreateSMSSandboxPhoneNumberInput) throws -> SimpleNotificationModel.CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber {
        if let createSMSSandboxPhoneNumberSyncOverride = createSMSSandboxPhoneNumberSyncOverride {
            return try createSMSSandboxPhoneNumberSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTopic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTopicInput object being passed to this operation.
         - completion: The CreateTopicResponseForCreateTopic object or an error will be passed to this 
           callback when the operation is complete. The CreateTopicResponseForCreateTopic
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, internalError, invalidParameter, invalidSecurity, staleTag, tagLimitExceeded, tagPolicy, topicLimitExceeded.
     */
    public func createTopicAsync(
            input: SimpleNotificationModel.CreateTopicInput, 
            completion: @escaping (Result<SimpleNotificationModel.CreateTopicResponseForCreateTopic, SimpleNotificationError>) -> ()) throws {
        if let createTopicAsyncOverride = createTopicAsyncOverride {
            return try createTopicAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTopicInput object being passed to this operation.
     - Returns: The CreateTopicResponseForCreateTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, invalidSecurity, staleTag, tagLimitExceeded, tagPolicy, topicLimitExceeded.
     */
    public func createTopicSync(
            input: SimpleNotificationModel.CreateTopicInput) throws -> SimpleNotificationModel.CreateTopicResponseForCreateTopic {
        if let createTopicSyncOverride = createTopicSyncOverride {
            return try createTopicSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func deleteEndpointAsync(
            input: SimpleNotificationModel.DeleteEndpointInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        if let deleteEndpointAsyncOverride = deleteEndpointAsyncOverride {
            return try deleteEndpointAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func deleteEndpointSync(
            input: SimpleNotificationModel.DeleteEndpointInput) throws {
        if let deleteEndpointSyncOverride = deleteEndpointSyncOverride {
            return try deleteEndpointSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeletePlatformApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func deletePlatformApplicationAsync(
            input: SimpleNotificationModel.DeletePlatformApplicationInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        if let deletePlatformApplicationAsyncOverride = deletePlatformApplicationAsyncOverride {
            return try deletePlatformApplicationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeletePlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func deletePlatformApplicationSync(
            input: SimpleNotificationModel.DeletePlatformApplicationInput) throws {
        if let deletePlatformApplicationSyncOverride = deletePlatformApplicationSyncOverride {
            return try deletePlatformApplicationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteSMSSandboxPhoneNumber operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSMSSandboxPhoneNumberInput object being passed to this operation.
         - completion: The DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber object or an error will be passed to this 
           callback when the operation is complete. The DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, resourceNotFound, throttled, userError.
     */
    public func deleteSMSSandboxPhoneNumberAsync(
            input: SimpleNotificationModel.DeleteSMSSandboxPhoneNumberInput, 
            completion: @escaping (Result<SimpleNotificationModel.DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber, SimpleNotificationError>) -> ()) throws {
        if let deleteSMSSandboxPhoneNumberAsyncOverride = deleteSMSSandboxPhoneNumberAsyncOverride {
            return try deleteSMSSandboxPhoneNumberAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteSMSSandboxPhoneNumber operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSMSSandboxPhoneNumberInput object being passed to this operation.
     - Returns: The DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, resourceNotFound, throttled, userError.
     */
    public func deleteSMSSandboxPhoneNumberSync(
            input: SimpleNotificationModel.DeleteSMSSandboxPhoneNumberInput) throws -> SimpleNotificationModel.DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber {
        if let deleteSMSSandboxPhoneNumberSyncOverride = deleteSMSSandboxPhoneNumberSyncOverride {
            return try deleteSMSSandboxPhoneNumberSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTopic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, concurrentAccess, internalError, invalidParameter, invalidState, notFound, staleTag, tagPolicy.
     */
    public func deleteTopicAsync(
            input: SimpleNotificationModel.DeleteTopicInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        if let deleteTopicAsyncOverride = deleteTopicAsyncOverride {
            return try deleteTopicAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, invalidState, notFound, staleTag, tagPolicy.
     */
    public func deleteTopicSync(
            input: SimpleNotificationModel.DeleteTopicInput) throws {
        if let deleteTopicSyncOverride = deleteTopicSyncOverride {
            return try deleteTopicSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetDataProtectionPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetDataProtectionPolicyInput object being passed to this operation.
         - completion: The GetDataProtectionPolicyResponseForGetDataProtectionPolicy object or an error will be passed to this 
           callback when the operation is complete. The GetDataProtectionPolicyResponseForGetDataProtectionPolicy
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func getDataProtectionPolicyAsync(
            input: SimpleNotificationModel.GetDataProtectionPolicyInput, 
            completion: @escaping (Result<SimpleNotificationModel.GetDataProtectionPolicyResponseForGetDataProtectionPolicy, SimpleNotificationError>) -> ()) throws {
        if let getDataProtectionPolicyAsyncOverride = getDataProtectionPolicyAsyncOverride {
            return try getDataProtectionPolicyAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetDataProtectionPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetDataProtectionPolicyInput object being passed to this operation.
     - Returns: The GetDataProtectionPolicyResponseForGetDataProtectionPolicy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func getDataProtectionPolicySync(
            input: SimpleNotificationModel.GetDataProtectionPolicyInput) throws -> SimpleNotificationModel.GetDataProtectionPolicyResponseForGetDataProtectionPolicy {
        if let getDataProtectionPolicySyncOverride = getDataProtectionPolicySyncOverride {
            return try getDataProtectionPolicySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetEndpointAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetEndpointAttributesInput object being passed to this operation.
         - completion: The GetEndpointAttributesResponseForGetEndpointAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetEndpointAttributesResponseForGetEndpointAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getEndpointAttributesAsync(
            input: SimpleNotificationModel.GetEndpointAttributesInput, 
            completion: @escaping (Result<SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes, SimpleNotificationError>) -> ()) throws {
        if let getEndpointAttributesAsyncOverride = getEndpointAttributesAsyncOverride {
            return try getEndpointAttributesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetEndpointAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetEndpointAttributesInput object being passed to this operation.
     - Returns: The GetEndpointAttributesResponseForGetEndpointAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getEndpointAttributesSync(
            input: SimpleNotificationModel.GetEndpointAttributesInput) throws -> SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes {
        if let getEndpointAttributesSyncOverride = getEndpointAttributesSyncOverride {
            return try getEndpointAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetPlatformApplicationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPlatformApplicationAttributesInput object being passed to this operation.
         - completion: The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getPlatformApplicationAttributesAsync(
            input: SimpleNotificationModel.GetPlatformApplicationAttributesInput, 
            completion: @escaping (Result<SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes, SimpleNotificationError>) -> ()) throws {
        if let getPlatformApplicationAttributesAsyncOverride = getPlatformApplicationAttributesAsyncOverride {
            return try getPlatformApplicationAttributesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetPlatformApplicationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPlatformApplicationAttributesInput object being passed to this operation.
     - Returns: The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getPlatformApplicationAttributesSync(
            input: SimpleNotificationModel.GetPlatformApplicationAttributesInput) throws -> SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes {
        if let getPlatformApplicationAttributesSyncOverride = getPlatformApplicationAttributesSyncOverride {
            return try getPlatformApplicationAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetSMSAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetSMSAttributesInput object being passed to this operation.
         - completion: The GetSMSAttributesResponseForGetSMSAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetSMSAttributesResponseForGetSMSAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    public func getSMSAttributesAsync(
            input: SimpleNotificationModel.GetSMSAttributesInput, 
            completion: @escaping (Result<SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes, SimpleNotificationError>) -> ()) throws {
        if let getSMSAttributesAsyncOverride = getSMSAttributesAsyncOverride {
            return try getSMSAttributesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetSMSAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSMSAttributesInput object being passed to this operation.
     - Returns: The GetSMSAttributesResponseForGetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func getSMSAttributesSync(
            input: SimpleNotificationModel.GetSMSAttributesInput) throws -> SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes {
        if let getSMSAttributesSyncOverride = getSMSAttributesSyncOverride {
            return try getSMSAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetSMSSandboxAccountStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetSMSSandboxAccountStatusInput object being passed to this operation.
         - completion: The GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus object or an error will be passed to this 
           callback when the operation is complete. The GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, throttled.
     */
    public func getSMSSandboxAccountStatusAsync(
            input: SimpleNotificationModel.GetSMSSandboxAccountStatusInput, 
            completion: @escaping (Result<SimpleNotificationModel.GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus, SimpleNotificationError>) -> ()) throws {
        if let getSMSSandboxAccountStatusAsyncOverride = getSMSSandboxAccountStatusAsyncOverride {
            return try getSMSSandboxAccountStatusAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetSMSSandboxAccountStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSMSSandboxAccountStatusInput object being passed to this operation.
     - Returns: The GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, throttled.
     */
    public func getSMSSandboxAccountStatusSync(
            input: SimpleNotificationModel.GetSMSSandboxAccountStatusInput) throws -> SimpleNotificationModel.GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus {
        if let getSMSSandboxAccountStatusSyncOverride = getSMSSandboxAccountStatusSyncOverride {
            return try getSMSSandboxAccountStatusSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetSubscriptionAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetSubscriptionAttributesInput object being passed to this operation.
         - completion: The GetSubscriptionAttributesResponseForGetSubscriptionAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetSubscriptionAttributesResponseForGetSubscriptionAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getSubscriptionAttributesAsync(
            input: SimpleNotificationModel.GetSubscriptionAttributesInput, 
            completion: @escaping (Result<SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes, SimpleNotificationError>) -> ()) throws {
        if let getSubscriptionAttributesAsyncOverride = getSubscriptionAttributesAsyncOverride {
            return try getSubscriptionAttributesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetSubscriptionAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSubscriptionAttributesInput object being passed to this operation.
     - Returns: The GetSubscriptionAttributesResponseForGetSubscriptionAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getSubscriptionAttributesSync(
            input: SimpleNotificationModel.GetSubscriptionAttributesInput) throws -> SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes {
        if let getSubscriptionAttributesSyncOverride = getSubscriptionAttributesSyncOverride {
            return try getSubscriptionAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetTopicAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTopicAttributesInput object being passed to this operation.
         - completion: The GetTopicAttributesResponseForGetTopicAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetTopicAttributesResponseForGetTopicAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func getTopicAttributesAsync(
            input: SimpleNotificationModel.GetTopicAttributesInput, 
            completion: @escaping (Result<SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes, SimpleNotificationError>) -> ()) throws {
        if let getTopicAttributesAsyncOverride = getTopicAttributesAsyncOverride {
            return try getTopicAttributesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetTopicAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTopicAttributesInput object being passed to this operation.
     - Returns: The GetTopicAttributesResponseForGetTopicAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func getTopicAttributesSync(
            input: SimpleNotificationModel.GetTopicAttributesInput) throws -> SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes {
        if let getTopicAttributesSyncOverride = getTopicAttributesSyncOverride {
            return try getTopicAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListEndpointsByPlatformApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListEndpointsByPlatformApplicationInput object being passed to this operation.
         - completion: The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication object or an error will be passed to this 
           callback when the operation is complete. The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func listEndpointsByPlatformApplicationAsync(
            input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput, 
            completion: @escaping (Result<SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication, SimpleNotificationError>) -> ()) throws {
        if let listEndpointsByPlatformApplicationAsyncOverride = listEndpointsByPlatformApplicationAsyncOverride {
            return try listEndpointsByPlatformApplicationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListEndpointsByPlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListEndpointsByPlatformApplicationInput object being passed to this operation.
     - Returns: The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func listEndpointsByPlatformApplicationSync(
            input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput) throws -> SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication {
        if let listEndpointsByPlatformApplicationSyncOverride = listEndpointsByPlatformApplicationSyncOverride {
            return try listEndpointsByPlatformApplicationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListOriginationNumbers operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListOriginationNumbersRequest object being passed to this operation.
         - completion: The ListOriginationNumbersResultForListOriginationNumbers object or an error will be passed to this 
           callback when the operation is complete. The ListOriginationNumbersResultForListOriginationNumbers
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled, validation.
     */
    public func listOriginationNumbersAsync(
            input: SimpleNotificationModel.ListOriginationNumbersRequest, 
            completion: @escaping (Result<SimpleNotificationModel.ListOriginationNumbersResultForListOriginationNumbers, SimpleNotificationError>) -> ()) throws {
        if let listOriginationNumbersAsyncOverride = listOriginationNumbersAsyncOverride {
            return try listOriginationNumbersAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListOriginationNumbers operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListOriginationNumbersRequest object being passed to this operation.
     - Returns: The ListOriginationNumbersResultForListOriginationNumbers object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled, validation.
     */
    public func listOriginationNumbersSync(
            input: SimpleNotificationModel.ListOriginationNumbersRequest) throws -> SimpleNotificationModel.ListOriginationNumbersResultForListOriginationNumbers {
        if let listOriginationNumbersSyncOverride = listOriginationNumbersSyncOverride {
            return try listOriginationNumbersSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListPhoneNumbersOptedOut operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPhoneNumbersOptedOutInput object being passed to this operation.
         - completion: The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut object or an error will be passed to this 
           callback when the operation is complete. The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    public func listPhoneNumbersOptedOutAsync(
            input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput, 
            completion: @escaping (Result<SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut, SimpleNotificationError>) -> ()) throws {
        if let listPhoneNumbersOptedOutAsyncOverride = listPhoneNumbersOptedOutAsyncOverride {
            return try listPhoneNumbersOptedOutAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListPhoneNumbersOptedOut operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPhoneNumbersOptedOutInput object being passed to this operation.
     - Returns: The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func listPhoneNumbersOptedOutSync(
            input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput) throws -> SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut {
        if let listPhoneNumbersOptedOutSyncOverride = listPhoneNumbersOptedOutSyncOverride {
            return try listPhoneNumbersOptedOutSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListPlatformApplications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPlatformApplicationsInput object being passed to this operation.
         - completion: The ListPlatformApplicationsResponseForListPlatformApplications object or an error will be passed to this 
           callback when the operation is complete. The ListPlatformApplicationsResponseForListPlatformApplications
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func listPlatformApplicationsAsync(
            input: SimpleNotificationModel.ListPlatformApplicationsInput, 
            completion: @escaping (Result<SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications, SimpleNotificationError>) -> ()) throws {
        if let listPlatformApplicationsAsyncOverride = listPlatformApplicationsAsyncOverride {
            return try listPlatformApplicationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListPlatformApplications operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPlatformApplicationsInput object being passed to this operation.
     - Returns: The ListPlatformApplicationsResponseForListPlatformApplications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func listPlatformApplicationsSync(
            input: SimpleNotificationModel.ListPlatformApplicationsInput) throws -> SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications {
        if let listPlatformApplicationsSyncOverride = listPlatformApplicationsSyncOverride {
            return try listPlatformApplicationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListSMSSandboxPhoneNumbers operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSMSSandboxPhoneNumbersInput object being passed to this operation.
         - completion: The ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers object or an error will be passed to this 
           callback when the operation is complete. The ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, resourceNotFound, throttled.
     */
    public func listSMSSandboxPhoneNumbersAsync(
            input: SimpleNotificationModel.ListSMSSandboxPhoneNumbersInput, 
            completion: @escaping (Result<SimpleNotificationModel.ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers, SimpleNotificationError>) -> ()) throws {
        if let listSMSSandboxPhoneNumbersAsyncOverride = listSMSSandboxPhoneNumbersAsyncOverride {
            return try listSMSSandboxPhoneNumbersAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListSMSSandboxPhoneNumbers operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSMSSandboxPhoneNumbersInput object being passed to this operation.
     - Returns: The ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, resourceNotFound, throttled.
     */
    public func listSMSSandboxPhoneNumbersSync(
            input: SimpleNotificationModel.ListSMSSandboxPhoneNumbersInput) throws -> SimpleNotificationModel.ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers {
        if let listSMSSandboxPhoneNumbersSyncOverride = listSMSSandboxPhoneNumbersSyncOverride {
            return try listSMSSandboxPhoneNumbersSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListSubscriptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSubscriptionsInput object being passed to this operation.
         - completion: The ListSubscriptionsResponseForListSubscriptions object or an error will be passed to this 
           callback when the operation is complete. The ListSubscriptionsResponseForListSubscriptions
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func listSubscriptionsAsync(
            input: SimpleNotificationModel.ListSubscriptionsInput, 
            completion: @escaping (Result<SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions, SimpleNotificationError>) -> ()) throws {
        if let listSubscriptionsAsyncOverride = listSubscriptionsAsyncOverride {
            return try listSubscriptionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListSubscriptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSubscriptionsInput object being passed to this operation.
     - Returns: The ListSubscriptionsResponseForListSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func listSubscriptionsSync(
            input: SimpleNotificationModel.ListSubscriptionsInput) throws -> SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions {
        if let listSubscriptionsSyncOverride = listSubscriptionsSyncOverride {
            return try listSubscriptionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListSubscriptionsByTopic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSubscriptionsByTopicInput object being passed to this operation.
         - completion: The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic object or an error will be passed to this 
           callback when the operation is complete. The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func listSubscriptionsByTopicAsync(
            input: SimpleNotificationModel.ListSubscriptionsByTopicInput, 
            completion: @escaping (Result<SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic, SimpleNotificationError>) -> ()) throws {
        if let listSubscriptionsByTopicAsyncOverride = listSubscriptionsByTopicAsyncOverride {
            return try listSubscriptionsByTopicAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListSubscriptionsByTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSubscriptionsByTopicInput object being passed to this operation.
     - Returns: The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func listSubscriptionsByTopicSync(
            input: SimpleNotificationModel.ListSubscriptionsByTopicInput) throws -> SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic {
        if let listSubscriptionsByTopicSyncOverride = listSubscriptionsByTopicSyncOverride {
            return try listSubscriptionsByTopicSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
         - completion: The ListTagsForResourceResponseForListTagsForResource object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceResponseForListTagsForResource
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, tagPolicy.
     */
    public func listTagsForResourceAsync(
            input: SimpleNotificationModel.ListTagsForResourceRequest, 
            completion: @escaping (Result<SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource, SimpleNotificationError>) -> ()) throws {
        if let listTagsForResourceAsyncOverride = listTagsForResourceAsyncOverride {
            return try listTagsForResourceAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponseForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, tagPolicy.
     */
    public func listTagsForResourceSync(
            input: SimpleNotificationModel.ListTagsForResourceRequest) throws -> SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource {
        if let listTagsForResourceSyncOverride = listTagsForResourceSyncOverride {
            return try listTagsForResourceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListTopics operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTopicsInput object being passed to this operation.
         - completion: The ListTopicsResponseForListTopics object or an error will be passed to this 
           callback when the operation is complete. The ListTopicsResponseForListTopics
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func listTopicsAsync(
            input: SimpleNotificationModel.ListTopicsInput, 
            completion: @escaping (Result<SimpleNotificationModel.ListTopicsResponseForListTopics, SimpleNotificationError>) -> ()) throws {
        if let listTopicsAsyncOverride = listTopicsAsyncOverride {
            return try listTopicsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListTopics operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTopicsInput object being passed to this operation.
     - Returns: The ListTopicsResponseForListTopics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func listTopicsSync(
            input: SimpleNotificationModel.ListTopicsInput) throws -> SimpleNotificationModel.ListTopicsResponseForListTopics {
        if let listTopicsSyncOverride = listTopicsSyncOverride {
            return try listTopicsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the OptInPhoneNumber operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated OptInPhoneNumberInput object being passed to this operation.
         - completion: The OptInPhoneNumberResponseForOptInPhoneNumber object or an error will be passed to this 
           callback when the operation is complete. The OptInPhoneNumberResponseForOptInPhoneNumber
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    public func optInPhoneNumberAsync(
            input: SimpleNotificationModel.OptInPhoneNumberInput, 
            completion: @escaping (Result<SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber, SimpleNotificationError>) -> ()) throws {
        if let optInPhoneNumberAsyncOverride = optInPhoneNumberAsyncOverride {
            return try optInPhoneNumberAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the OptInPhoneNumber operation waiting for the response before returning.

     - Parameters:
         - input: The validated OptInPhoneNumberInput object being passed to this operation.
     - Returns: The OptInPhoneNumberResponseForOptInPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func optInPhoneNumberSync(
            input: SimpleNotificationModel.OptInPhoneNumberInput) throws -> SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber {
        if let optInPhoneNumberSyncOverride = optInPhoneNumberSyncOverride {
            return try optInPhoneNumberSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the Publish operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PublishInput object being passed to this operation.
         - completion: The PublishResponseForPublish object or an error will be passed to this 
           callback when the operation is complete. The PublishResponseForPublish
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, endpointDisabled, internalError, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled, validation.
     */
    public func publishAsync(
            input: SimpleNotificationModel.PublishInput, 
            completion: @escaping (Result<SimpleNotificationModel.PublishResponseForPublish, SimpleNotificationError>) -> ()) throws {
        if let publishAsyncOverride = publishAsyncOverride {
            return try publishAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the Publish operation waiting for the response before returning.

     - Parameters:
         - input: The validated PublishInput object being passed to this operation.
     - Returns: The PublishResponseForPublish object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, endpointDisabled, internalError, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled, validation.
     */
    public func publishSync(
            input: SimpleNotificationModel.PublishInput) throws -> SimpleNotificationModel.PublishResponseForPublish {
        if let publishSyncOverride = publishSyncOverride {
            return try publishSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PublishBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PublishBatchInput object being passed to this operation.
         - completion: The PublishBatchResponseForPublishBatch object or an error will be passed to this 
           callback when the operation is complete. The PublishBatchResponseForPublishBatch
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, batchEntryIdsNotDistinct, batchRequestTooLong, emptyBatchRequest, endpointDisabled, internalError, invalidBatchEntryId, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled, tooManyEntriesInBatchRequest, validation.
     */
    public func publishBatchAsync(
            input: SimpleNotificationModel.PublishBatchInput, 
            completion: @escaping (Result<SimpleNotificationModel.PublishBatchResponseForPublishBatch, SimpleNotificationError>) -> ()) throws {
        if let publishBatchAsyncOverride = publishBatchAsyncOverride {
            return try publishBatchAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the PublishBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated PublishBatchInput object being passed to this operation.
     - Returns: The PublishBatchResponseForPublishBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, batchEntryIdsNotDistinct, batchRequestTooLong, emptyBatchRequest, endpointDisabled, internalError, invalidBatchEntryId, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled, tooManyEntriesInBatchRequest, validation.
     */
    public func publishBatchSync(
            input: SimpleNotificationModel.PublishBatchInput) throws -> SimpleNotificationModel.PublishBatchResponseForPublishBatch {
        if let publishBatchSyncOverride = publishBatchSyncOverride {
            return try publishBatchSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutDataProtectionPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutDataProtectionPolicyInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func putDataProtectionPolicyAsync(
            input: SimpleNotificationModel.PutDataProtectionPolicyInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        if let putDataProtectionPolicyAsyncOverride = putDataProtectionPolicyAsyncOverride {
            return try putDataProtectionPolicyAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutDataProtectionPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutDataProtectionPolicyInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func putDataProtectionPolicySync(
            input: SimpleNotificationModel.PutDataProtectionPolicyInput) throws {
        if let putDataProtectionPolicySyncOverride = putDataProtectionPolicySyncOverride {
            return try putDataProtectionPolicySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RemovePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func removePermissionAsync(
            input: SimpleNotificationModel.RemovePermissionInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        if let removePermissionAsyncOverride = removePermissionAsyncOverride {
            return try removePermissionAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the RemovePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func removePermissionSync(
            input: SimpleNotificationModel.RemovePermissionInput) throws {
        if let removePermissionSyncOverride = removePermissionSyncOverride {
            return try removePermissionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the SetEndpointAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setEndpointAttributesAsync(
            input: SimpleNotificationModel.SetEndpointAttributesInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        if let setEndpointAttributesAsyncOverride = setEndpointAttributesAsyncOverride {
            return try setEndpointAttributesAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the SetEndpointAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setEndpointAttributesSync(
            input: SimpleNotificationModel.SetEndpointAttributesInput) throws {
        if let setEndpointAttributesSyncOverride = setEndpointAttributesSyncOverride {
            return try setEndpointAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the SetPlatformApplicationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setPlatformApplicationAttributesAsync(
            input: SimpleNotificationModel.SetPlatformApplicationAttributesInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        if let setPlatformApplicationAttributesAsyncOverride = setPlatformApplicationAttributesAsyncOverride {
            return try setPlatformApplicationAttributesAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the SetPlatformApplicationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setPlatformApplicationAttributesSync(
            input: SimpleNotificationModel.SetPlatformApplicationAttributesInput) throws {
        if let setPlatformApplicationAttributesSyncOverride = setPlatformApplicationAttributesSyncOverride {
            return try setPlatformApplicationAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the SetSMSAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetSMSAttributesInput object being passed to this operation.
         - completion: The SetSMSAttributesResponseForSetSMSAttributes object or an error will be passed to this 
           callback when the operation is complete. The SetSMSAttributesResponseForSetSMSAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    public func setSMSAttributesAsync(
            input: SimpleNotificationModel.SetSMSAttributesInput, 
            completion: @escaping (Result<SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes, SimpleNotificationError>) -> ()) throws {
        if let setSMSAttributesAsyncOverride = setSMSAttributesAsyncOverride {
            return try setSMSAttributesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the SetSMSAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetSMSAttributesInput object being passed to this operation.
     - Returns: The SetSMSAttributesResponseForSetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func setSMSAttributesSync(
            input: SimpleNotificationModel.SetSMSAttributesInput) throws -> SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes {
        if let setSMSAttributesSyncOverride = setSMSAttributesSyncOverride {
            return try setSMSAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the SetSubscriptionAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, replayLimitExceeded.
     */
    public func setSubscriptionAttributesAsync(
            input: SimpleNotificationModel.SetSubscriptionAttributesInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        if let setSubscriptionAttributesAsyncOverride = setSubscriptionAttributesAsyncOverride {
            return try setSubscriptionAttributesAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the SetSubscriptionAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, replayLimitExceeded.
     */
    public func setSubscriptionAttributesSync(
            input: SimpleNotificationModel.SetSubscriptionAttributesInput) throws {
        if let setSubscriptionAttributesSyncOverride = setSubscriptionAttributesSyncOverride {
            return try setSubscriptionAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the SetTopicAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func setTopicAttributesAsync(
            input: SimpleNotificationModel.SetTopicAttributesInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        if let setTopicAttributesAsyncOverride = setTopicAttributesAsyncOverride {
            return try setTopicAttributesAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the SetTopicAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func setTopicAttributesSync(
            input: SimpleNotificationModel.SetTopicAttributesInput) throws {
        if let setTopicAttributesSyncOverride = setTopicAttributesSyncOverride {
            return try setTopicAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the Subscribe operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubscribeInput object being passed to this operation.
         - completion: The SubscribeResponseForSubscribe object or an error will be passed to this 
           callback when the operation is complete. The SubscribeResponseForSubscribe
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, invalidSecurity, notFound, replayLimitExceeded, subscriptionLimitExceeded.
     */
    public func subscribeAsync(
            input: SimpleNotificationModel.SubscribeInput, 
            completion: @escaping (Result<SimpleNotificationModel.SubscribeResponseForSubscribe, SimpleNotificationError>) -> ()) throws {
        if let subscribeAsyncOverride = subscribeAsyncOverride {
            return try subscribeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the Subscribe operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubscribeInput object being passed to this operation.
     - Returns: The SubscribeResponseForSubscribe object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, invalidSecurity, notFound, replayLimitExceeded, subscriptionLimitExceeded.
     */
    public func subscribeSync(
            input: SimpleNotificationModel.SubscribeInput) throws -> SimpleNotificationModel.SubscribeResponseForSubscribe {
        if let subscribeSyncOverride = subscribeSyncOverride {
            return try subscribeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
         - completion: The TagResourceResponseForTagResource object or an error will be passed to this 
           callback when the operation is complete. The TagResourceResponseForTagResource
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    public func tagResourceAsync(
            input: SimpleNotificationModel.TagResourceRequest, 
            completion: @escaping (Result<SimpleNotificationModel.TagResourceResponseForTagResource, SimpleNotificationError>) -> ()) throws {
        if let tagResourceAsyncOverride = tagResourceAsyncOverride {
            return try tagResourceAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponseForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    public func tagResourceSync(
            input: SimpleNotificationModel.TagResourceRequest) throws -> SimpleNotificationModel.TagResourceResponseForTagResource {
        if let tagResourceSyncOverride = tagResourceSyncOverride {
            return try tagResourceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the Unsubscribe operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func unsubscribeAsync(
            input: SimpleNotificationModel.UnsubscribeInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws {
        if let unsubscribeAsyncOverride = unsubscribeAsyncOverride {
            return try unsubscribeAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the Unsubscribe operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func unsubscribeSync(
            input: SimpleNotificationModel.UnsubscribeInput) throws {
        if let unsubscribeSyncOverride = unsubscribeSyncOverride {
            return try unsubscribeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
         - completion: The UntagResourceResponseForUntagResource object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceResponseForUntagResource
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    public func untagResourceAsync(
            input: SimpleNotificationModel.UntagResourceRequest, 
            completion: @escaping (Result<SimpleNotificationModel.UntagResourceResponseForUntagResource, SimpleNotificationError>) -> ()) throws {
        if let untagResourceAsyncOverride = untagResourceAsyncOverride {
            return try untagResourceAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponseForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    public func untagResourceSync(
            input: SimpleNotificationModel.UntagResourceRequest) throws -> SimpleNotificationModel.UntagResourceResponseForUntagResource {
        if let untagResourceSyncOverride = untagResourceSyncOverride {
            return try untagResourceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the VerifySMSSandboxPhoneNumber operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated VerifySMSSandboxPhoneNumberInput object being passed to this operation.
         - completion: The VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber object or an error will be passed to this 
           callback when the operation is complete. The VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, resourceNotFound, throttled, verification.
     */
    public func verifySMSSandboxPhoneNumberAsync(
            input: SimpleNotificationModel.VerifySMSSandboxPhoneNumberInput, 
            completion: @escaping (Result<SimpleNotificationModel.VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber, SimpleNotificationError>) -> ()) throws {
        if let verifySMSSandboxPhoneNumberAsyncOverride = verifySMSSandboxPhoneNumberAsyncOverride {
            return try verifySMSSandboxPhoneNumberAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the VerifySMSSandboxPhoneNumber operation waiting for the response before returning.

     - Parameters:
         - input: The validated VerifySMSSandboxPhoneNumberInput object being passed to this operation.
     - Returns: The VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, resourceNotFound, throttled, verification.
     */
    public func verifySMSSandboxPhoneNumberSync(
            input: SimpleNotificationModel.VerifySMSSandboxPhoneNumberInput) throws -> SimpleNotificationModel.VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber {
        if let verifySMSSandboxPhoneNumberSyncOverride = verifySMSSandboxPhoneNumberSyncOverride {
            return try verifySMSSandboxPhoneNumberSyncOverride(input)
        }

        throw error
    }
}
