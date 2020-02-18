// Copyright 2018-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment type_body_length
// -- Generated Code; do not edit --
//
// MockSimpleNotificationClient.swift
// SimpleNotificationClient
//

import Foundation
import SimpleNotificationModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the SimpleNotification service by default returns the `__default` property of its return type.
 */
public struct MockSimpleNotificationClient<ClientInvocationReportingType: SmokeAWSInvocationReporting>: SimpleNotificationClientProtocol {
    let addPermissionAsyncOverride: AddPermissionAsyncType<ClientInvocationReportingType>?
    let addPermissionSyncOverride: AddPermissionSyncType<ClientInvocationReportingType>?
    let checkIfPhoneNumberIsOptedOutAsyncOverride: CheckIfPhoneNumberIsOptedOutAsyncType<ClientInvocationReportingType>?
    let checkIfPhoneNumberIsOptedOutSyncOverride: CheckIfPhoneNumberIsOptedOutSyncType<ClientInvocationReportingType>?
    let confirmSubscriptionAsyncOverride: ConfirmSubscriptionAsyncType<ClientInvocationReportingType>?
    let confirmSubscriptionSyncOverride: ConfirmSubscriptionSyncType<ClientInvocationReportingType>?
    let createPlatformApplicationAsyncOverride: CreatePlatformApplicationAsyncType<ClientInvocationReportingType>?
    let createPlatformApplicationSyncOverride: CreatePlatformApplicationSyncType<ClientInvocationReportingType>?
    let createPlatformEndpointAsyncOverride: CreatePlatformEndpointAsyncType<ClientInvocationReportingType>?
    let createPlatformEndpointSyncOverride: CreatePlatformEndpointSyncType<ClientInvocationReportingType>?
    let createTopicAsyncOverride: CreateTopicAsyncType<ClientInvocationReportingType>?
    let createTopicSyncOverride: CreateTopicSyncType<ClientInvocationReportingType>?
    let deleteEndpointAsyncOverride: DeleteEndpointAsyncType<ClientInvocationReportingType>?
    let deleteEndpointSyncOverride: DeleteEndpointSyncType<ClientInvocationReportingType>?
    let deletePlatformApplicationAsyncOverride: DeletePlatformApplicationAsyncType<ClientInvocationReportingType>?
    let deletePlatformApplicationSyncOverride: DeletePlatformApplicationSyncType<ClientInvocationReportingType>?
    let deleteTopicAsyncOverride: DeleteTopicAsyncType<ClientInvocationReportingType>?
    let deleteTopicSyncOverride: DeleteTopicSyncType<ClientInvocationReportingType>?
    let getEndpointAttributesAsyncOverride: GetEndpointAttributesAsyncType<ClientInvocationReportingType>?
    let getEndpointAttributesSyncOverride: GetEndpointAttributesSyncType<ClientInvocationReportingType>?
    let getPlatformApplicationAttributesAsyncOverride: GetPlatformApplicationAttributesAsyncType<ClientInvocationReportingType>?
    let getPlatformApplicationAttributesSyncOverride: GetPlatformApplicationAttributesSyncType<ClientInvocationReportingType>?
    let getSMSAttributesAsyncOverride: GetSMSAttributesAsyncType<ClientInvocationReportingType>?
    let getSMSAttributesSyncOverride: GetSMSAttributesSyncType<ClientInvocationReportingType>?
    let getSubscriptionAttributesAsyncOverride: GetSubscriptionAttributesAsyncType<ClientInvocationReportingType>?
    let getSubscriptionAttributesSyncOverride: GetSubscriptionAttributesSyncType<ClientInvocationReportingType>?
    let getTopicAttributesAsyncOverride: GetTopicAttributesAsyncType<ClientInvocationReportingType>?
    let getTopicAttributesSyncOverride: GetTopicAttributesSyncType<ClientInvocationReportingType>?
    let listEndpointsByPlatformApplicationAsyncOverride: ListEndpointsByPlatformApplicationAsyncType<ClientInvocationReportingType>?
    let listEndpointsByPlatformApplicationSyncOverride: ListEndpointsByPlatformApplicationSyncType<ClientInvocationReportingType>?
    let listPhoneNumbersOptedOutAsyncOverride: ListPhoneNumbersOptedOutAsyncType<ClientInvocationReportingType>?
    let listPhoneNumbersOptedOutSyncOverride: ListPhoneNumbersOptedOutSyncType<ClientInvocationReportingType>?
    let listPlatformApplicationsAsyncOverride: ListPlatformApplicationsAsyncType<ClientInvocationReportingType>?
    let listPlatformApplicationsSyncOverride: ListPlatformApplicationsSyncType<ClientInvocationReportingType>?
    let listSubscriptionsAsyncOverride: ListSubscriptionsAsyncType<ClientInvocationReportingType>?
    let listSubscriptionsSyncOverride: ListSubscriptionsSyncType<ClientInvocationReportingType>?
    let listSubscriptionsByTopicAsyncOverride: ListSubscriptionsByTopicAsyncType<ClientInvocationReportingType>?
    let listSubscriptionsByTopicSyncOverride: ListSubscriptionsByTopicSyncType<ClientInvocationReportingType>?
    let listTagsForResourceAsyncOverride: ListTagsForResourceAsyncType<ClientInvocationReportingType>?
    let listTagsForResourceSyncOverride: ListTagsForResourceSyncType<ClientInvocationReportingType>?
    let listTopicsAsyncOverride: ListTopicsAsyncType<ClientInvocationReportingType>?
    let listTopicsSyncOverride: ListTopicsSyncType<ClientInvocationReportingType>?
    let optInPhoneNumberAsyncOverride: OptInPhoneNumberAsyncType<ClientInvocationReportingType>?
    let optInPhoneNumberSyncOverride: OptInPhoneNumberSyncType<ClientInvocationReportingType>?
    let publishAsyncOverride: PublishAsyncType<ClientInvocationReportingType>?
    let publishSyncOverride: PublishSyncType<ClientInvocationReportingType>?
    let removePermissionAsyncOverride: RemovePermissionAsyncType<ClientInvocationReportingType>?
    let removePermissionSyncOverride: RemovePermissionSyncType<ClientInvocationReportingType>?
    let setEndpointAttributesAsyncOverride: SetEndpointAttributesAsyncType<ClientInvocationReportingType>?
    let setEndpointAttributesSyncOverride: SetEndpointAttributesSyncType<ClientInvocationReportingType>?
    let setPlatformApplicationAttributesAsyncOverride: SetPlatformApplicationAttributesAsyncType<ClientInvocationReportingType>?
    let setPlatformApplicationAttributesSyncOverride: SetPlatformApplicationAttributesSyncType<ClientInvocationReportingType>?
    let setSMSAttributesAsyncOverride: SetSMSAttributesAsyncType<ClientInvocationReportingType>?
    let setSMSAttributesSyncOverride: SetSMSAttributesSyncType<ClientInvocationReportingType>?
    let setSubscriptionAttributesAsyncOverride: SetSubscriptionAttributesAsyncType<ClientInvocationReportingType>?
    let setSubscriptionAttributesSyncOverride: SetSubscriptionAttributesSyncType<ClientInvocationReportingType>?
    let setTopicAttributesAsyncOverride: SetTopicAttributesAsyncType<ClientInvocationReportingType>?
    let setTopicAttributesSyncOverride: SetTopicAttributesSyncType<ClientInvocationReportingType>?
    let subscribeAsyncOverride: SubscribeAsyncType<ClientInvocationReportingType>?
    let subscribeSyncOverride: SubscribeSyncType<ClientInvocationReportingType>?
    let tagResourceAsyncOverride: TagResourceAsyncType<ClientInvocationReportingType>?
    let tagResourceSyncOverride: TagResourceSyncType<ClientInvocationReportingType>?
    let unsubscribeAsyncOverride: UnsubscribeAsyncType<ClientInvocationReportingType>?
    let unsubscribeSyncOverride: UnsubscribeSyncType<ClientInvocationReportingType>?
    let untagResourceAsyncOverride: UntagResourceAsyncType<ClientInvocationReportingType>?
    let untagResourceSyncOverride: UntagResourceSyncType<ClientInvocationReportingType>?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            addPermissionAsync: AddPermissionAsyncType<ClientInvocationReportingType>? = nil,
            addPermissionSync: AddPermissionSyncType<ClientInvocationReportingType>? = nil,
            checkIfPhoneNumberIsOptedOutAsync: CheckIfPhoneNumberIsOptedOutAsyncType<ClientInvocationReportingType>? = nil,
            checkIfPhoneNumberIsOptedOutSync: CheckIfPhoneNumberIsOptedOutSyncType<ClientInvocationReportingType>? = nil,
            confirmSubscriptionAsync: ConfirmSubscriptionAsyncType<ClientInvocationReportingType>? = nil,
            confirmSubscriptionSync: ConfirmSubscriptionSyncType<ClientInvocationReportingType>? = nil,
            createPlatformApplicationAsync: CreatePlatformApplicationAsyncType<ClientInvocationReportingType>? = nil,
            createPlatformApplicationSync: CreatePlatformApplicationSyncType<ClientInvocationReportingType>? = nil,
            createPlatformEndpointAsync: CreatePlatformEndpointAsyncType<ClientInvocationReportingType>? = nil,
            createPlatformEndpointSync: CreatePlatformEndpointSyncType<ClientInvocationReportingType>? = nil,
            createTopicAsync: CreateTopicAsyncType<ClientInvocationReportingType>? = nil,
            createTopicSync: CreateTopicSyncType<ClientInvocationReportingType>? = nil,
            deleteEndpointAsync: DeleteEndpointAsyncType<ClientInvocationReportingType>? = nil,
            deleteEndpointSync: DeleteEndpointSyncType<ClientInvocationReportingType>? = nil,
            deletePlatformApplicationAsync: DeletePlatformApplicationAsyncType<ClientInvocationReportingType>? = nil,
            deletePlatformApplicationSync: DeletePlatformApplicationSyncType<ClientInvocationReportingType>? = nil,
            deleteTopicAsync: DeleteTopicAsyncType<ClientInvocationReportingType>? = nil,
            deleteTopicSync: DeleteTopicSyncType<ClientInvocationReportingType>? = nil,
            getEndpointAttributesAsync: GetEndpointAttributesAsyncType<ClientInvocationReportingType>? = nil,
            getEndpointAttributesSync: GetEndpointAttributesSyncType<ClientInvocationReportingType>? = nil,
            getPlatformApplicationAttributesAsync: GetPlatformApplicationAttributesAsyncType<ClientInvocationReportingType>? = nil,
            getPlatformApplicationAttributesSync: GetPlatformApplicationAttributesSyncType<ClientInvocationReportingType>? = nil,
            getSMSAttributesAsync: GetSMSAttributesAsyncType<ClientInvocationReportingType>? = nil,
            getSMSAttributesSync: GetSMSAttributesSyncType<ClientInvocationReportingType>? = nil,
            getSubscriptionAttributesAsync: GetSubscriptionAttributesAsyncType<ClientInvocationReportingType>? = nil,
            getSubscriptionAttributesSync: GetSubscriptionAttributesSyncType<ClientInvocationReportingType>? = nil,
            getTopicAttributesAsync: GetTopicAttributesAsyncType<ClientInvocationReportingType>? = nil,
            getTopicAttributesSync: GetTopicAttributesSyncType<ClientInvocationReportingType>? = nil,
            listEndpointsByPlatformApplicationAsync: ListEndpointsByPlatformApplicationAsyncType<ClientInvocationReportingType>? = nil,
            listEndpointsByPlatformApplicationSync: ListEndpointsByPlatformApplicationSyncType<ClientInvocationReportingType>? = nil,
            listPhoneNumbersOptedOutAsync: ListPhoneNumbersOptedOutAsyncType<ClientInvocationReportingType>? = nil,
            listPhoneNumbersOptedOutSync: ListPhoneNumbersOptedOutSyncType<ClientInvocationReportingType>? = nil,
            listPlatformApplicationsAsync: ListPlatformApplicationsAsyncType<ClientInvocationReportingType>? = nil,
            listPlatformApplicationsSync: ListPlatformApplicationsSyncType<ClientInvocationReportingType>? = nil,
            listSubscriptionsAsync: ListSubscriptionsAsyncType<ClientInvocationReportingType>? = nil,
            listSubscriptionsSync: ListSubscriptionsSyncType<ClientInvocationReportingType>? = nil,
            listSubscriptionsByTopicAsync: ListSubscriptionsByTopicAsyncType<ClientInvocationReportingType>? = nil,
            listSubscriptionsByTopicSync: ListSubscriptionsByTopicSyncType<ClientInvocationReportingType>? = nil,
            listTagsForResourceAsync: ListTagsForResourceAsyncType<ClientInvocationReportingType>? = nil,
            listTagsForResourceSync: ListTagsForResourceSyncType<ClientInvocationReportingType>? = nil,
            listTopicsAsync: ListTopicsAsyncType<ClientInvocationReportingType>? = nil,
            listTopicsSync: ListTopicsSyncType<ClientInvocationReportingType>? = nil,
            optInPhoneNumberAsync: OptInPhoneNumberAsyncType<ClientInvocationReportingType>? = nil,
            optInPhoneNumberSync: OptInPhoneNumberSyncType<ClientInvocationReportingType>? = nil,
            publishAsync: PublishAsyncType<ClientInvocationReportingType>? = nil,
            publishSync: PublishSyncType<ClientInvocationReportingType>? = nil,
            removePermissionAsync: RemovePermissionAsyncType<ClientInvocationReportingType>? = nil,
            removePermissionSync: RemovePermissionSyncType<ClientInvocationReportingType>? = nil,
            setEndpointAttributesAsync: SetEndpointAttributesAsyncType<ClientInvocationReportingType>? = nil,
            setEndpointAttributesSync: SetEndpointAttributesSyncType<ClientInvocationReportingType>? = nil,
            setPlatformApplicationAttributesAsync: SetPlatformApplicationAttributesAsyncType<ClientInvocationReportingType>? = nil,
            setPlatformApplicationAttributesSync: SetPlatformApplicationAttributesSyncType<ClientInvocationReportingType>? = nil,
            setSMSAttributesAsync: SetSMSAttributesAsyncType<ClientInvocationReportingType>? = nil,
            setSMSAttributesSync: SetSMSAttributesSyncType<ClientInvocationReportingType>? = nil,
            setSubscriptionAttributesAsync: SetSubscriptionAttributesAsyncType<ClientInvocationReportingType>? = nil,
            setSubscriptionAttributesSync: SetSubscriptionAttributesSyncType<ClientInvocationReportingType>? = nil,
            setTopicAttributesAsync: SetTopicAttributesAsyncType<ClientInvocationReportingType>? = nil,
            setTopicAttributesSync: SetTopicAttributesSyncType<ClientInvocationReportingType>? = nil,
            subscribeAsync: SubscribeAsyncType<ClientInvocationReportingType>? = nil,
            subscribeSync: SubscribeSyncType<ClientInvocationReportingType>? = nil,
            tagResourceAsync: TagResourceAsyncType<ClientInvocationReportingType>? = nil,
            tagResourceSync: TagResourceSyncType<ClientInvocationReportingType>? = nil,
            unsubscribeAsync: UnsubscribeAsyncType<ClientInvocationReportingType>? = nil,
            unsubscribeSync: UnsubscribeSyncType<ClientInvocationReportingType>? = nil,
            untagResourceAsync: UntagResourceAsyncType<ClientInvocationReportingType>? = nil,
            untagResourceSync: UntagResourceSyncType<ClientInvocationReportingType>? = nil) {
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
        self.createTopicAsyncOverride = createTopicAsync
        self.createTopicSyncOverride = createTopicSync
        self.deleteEndpointAsyncOverride = deleteEndpointAsync
        self.deleteEndpointSyncOverride = deleteEndpointSync
        self.deletePlatformApplicationAsyncOverride = deletePlatformApplicationAsync
        self.deletePlatformApplicationSyncOverride = deletePlatformApplicationSync
        self.deleteTopicAsyncOverride = deleteTopicAsync
        self.deleteTopicSyncOverride = deleteTopicSync
        self.getEndpointAttributesAsyncOverride = getEndpointAttributesAsync
        self.getEndpointAttributesSyncOverride = getEndpointAttributesSync
        self.getPlatformApplicationAttributesAsyncOverride = getPlatformApplicationAttributesAsync
        self.getPlatformApplicationAttributesSyncOverride = getPlatformApplicationAttributesSync
        self.getSMSAttributesAsyncOverride = getSMSAttributesAsync
        self.getSMSAttributesSyncOverride = getSMSAttributesSync
        self.getSubscriptionAttributesAsyncOverride = getSubscriptionAttributesAsync
        self.getSubscriptionAttributesSyncOverride = getSubscriptionAttributesSync
        self.getTopicAttributesAsyncOverride = getTopicAttributesAsync
        self.getTopicAttributesSyncOverride = getTopicAttributesSync
        self.listEndpointsByPlatformApplicationAsyncOverride = listEndpointsByPlatformApplicationAsync
        self.listEndpointsByPlatformApplicationSyncOverride = listEndpointsByPlatformApplicationSync
        self.listPhoneNumbersOptedOutAsyncOverride = listPhoneNumbersOptedOutAsync
        self.listPhoneNumbersOptedOutSyncOverride = listPhoneNumbersOptedOutSync
        self.listPlatformApplicationsAsyncOverride = listPlatformApplicationsAsync
        self.listPlatformApplicationsSyncOverride = listPlatformApplicationsSync
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
    }

    /**
     Invokes the AddPermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func addPermissionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.AddPermissionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let addPermissionAsyncOverrideNonOptional = addPermissionAsyncOverride {
            if let addPermissionAsyncOverrideTyped = addPermissionAsyncOverrideNonOptional
                    as? AddPermissionAsyncType<InvocationReportingType> {
                return try addPermissionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the AddPermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func addPermissionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.AddPermissionInput,
            reporting: InvocationReportingType) throws {
        if let addPermissionSyncOverrideNonOptional = addPermissionSyncOverride {
            if let addPermissionSyncOverrideTyped = addPermissionSyncOverrideNonOptional
                    as? AddPermissionSyncType<InvocationReportingType> {
                return try addPermissionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

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
    public func checkIfPhoneNumberIsOptedOutAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut, HTTPClientError>) -> ()) throws {
        if let checkIfPhoneNumberIsOptedOutAsyncOverrideNonOptional = checkIfPhoneNumberIsOptedOutAsyncOverride {
            if let checkIfPhoneNumberIsOptedOutAsyncOverrideTyped = checkIfPhoneNumberIsOptedOutAsyncOverrideNonOptional
                    as? CheckIfPhoneNumberIsOptedOutAsyncType<InvocationReportingType> {
                return try checkIfPhoneNumberIsOptedOutAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CheckIfPhoneNumberIsOptedOut operation waiting for the response before returning.

     - Parameters:
         - input: The validated CheckIfPhoneNumberIsOptedOutInput object being passed to this operation.
     - Returns: The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func checkIfPhoneNumberIsOptedOutSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut {
        if let checkIfPhoneNumberIsOptedOutSyncOverrideNonOptional = checkIfPhoneNumberIsOptedOutSyncOverride {
            if let checkIfPhoneNumberIsOptedOutSyncOverrideTyped = checkIfPhoneNumberIsOptedOutSyncOverrideNonOptional
                    as? CheckIfPhoneNumberIsOptedOutSyncType<InvocationReportingType> {
                return try checkIfPhoneNumberIsOptedOutSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut.__default
    }

    /**
     Invokes the ConfirmSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ConfirmSubscriptionInput object being passed to this operation.
         - completion: The ConfirmSubscriptionResponseForConfirmSubscription object or an error will be passed to this 
           callback when the operation is complete. The ConfirmSubscriptionResponseForConfirmSubscription
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, subscriptionLimitExceeded.
     */
    public func confirmSubscriptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ConfirmSubscriptionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription, HTTPClientError>) -> ()) throws {
        if let confirmSubscriptionAsyncOverrideNonOptional = confirmSubscriptionAsyncOverride {
            if let confirmSubscriptionAsyncOverrideTyped = confirmSubscriptionAsyncOverrideNonOptional
                    as? ConfirmSubscriptionAsyncType<InvocationReportingType> {
                return try confirmSubscriptionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = ConfirmSubscriptionResponseForConfirmSubscription.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ConfirmSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated ConfirmSubscriptionInput object being passed to this operation.
     - Returns: The ConfirmSubscriptionResponseForConfirmSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, subscriptionLimitExceeded.
     */
    public func confirmSubscriptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ConfirmSubscriptionInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription {
        if let confirmSubscriptionSyncOverrideNonOptional = confirmSubscriptionSyncOverride {
            if let confirmSubscriptionSyncOverrideTyped = confirmSubscriptionSyncOverrideNonOptional
                    as? ConfirmSubscriptionSyncType<InvocationReportingType> {
                return try confirmSubscriptionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return ConfirmSubscriptionResponseForConfirmSubscription.__default
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
    public func createPlatformApplicationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.CreatePlatformApplicationInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication, HTTPClientError>) -> ()) throws {
        if let createPlatformApplicationAsyncOverrideNonOptional = createPlatformApplicationAsyncOverride {
            if let createPlatformApplicationAsyncOverrideTyped = createPlatformApplicationAsyncOverrideNonOptional
                    as? CreatePlatformApplicationAsyncType<InvocationReportingType> {
                return try createPlatformApplicationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = CreatePlatformApplicationResponseForCreatePlatformApplication.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreatePlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlatformApplicationInput object being passed to this operation.
     - Returns: The CreatePlatformApplicationResponseForCreatePlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func createPlatformApplicationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.CreatePlatformApplicationInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication {
        if let createPlatformApplicationSyncOverrideNonOptional = createPlatformApplicationSyncOverride {
            if let createPlatformApplicationSyncOverrideTyped = createPlatformApplicationSyncOverrideNonOptional
                    as? CreatePlatformApplicationSyncType<InvocationReportingType> {
                return try createPlatformApplicationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return CreatePlatformApplicationResponseForCreatePlatformApplication.__default
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
    public func createPlatformEndpointAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.CreatePlatformEndpointInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint, HTTPClientError>) -> ()) throws {
        if let createPlatformEndpointAsyncOverrideNonOptional = createPlatformEndpointAsyncOverride {
            if let createPlatformEndpointAsyncOverrideTyped = createPlatformEndpointAsyncOverrideNonOptional
                    as? CreatePlatformEndpointAsyncType<InvocationReportingType> {
                return try createPlatformEndpointAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = CreateEndpointResponseForCreatePlatformEndpoint.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreatePlatformEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlatformEndpointInput object being passed to this operation.
     - Returns: The CreateEndpointResponseForCreatePlatformEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func createPlatformEndpointSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.CreatePlatformEndpointInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint {
        if let createPlatformEndpointSyncOverrideNonOptional = createPlatformEndpointSyncOverride {
            if let createPlatformEndpointSyncOverrideTyped = createPlatformEndpointSyncOverrideNonOptional
                    as? CreatePlatformEndpointSyncType<InvocationReportingType> {
                return try createPlatformEndpointSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return CreateEndpointResponseForCreatePlatformEndpoint.__default
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
    public func createTopicAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.CreateTopicInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.CreateTopicResponseForCreateTopic, HTTPClientError>) -> ()) throws {
        if let createTopicAsyncOverrideNonOptional = createTopicAsyncOverride {
            if let createTopicAsyncOverrideTyped = createTopicAsyncOverrideNonOptional
                    as? CreateTopicAsyncType<InvocationReportingType> {
                return try createTopicAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = CreateTopicResponseForCreateTopic.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTopicInput object being passed to this operation.
     - Returns: The CreateTopicResponseForCreateTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, invalidSecurity, staleTag, tagLimitExceeded, tagPolicy, topicLimitExceeded.
     */
    public func createTopicSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.CreateTopicInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.CreateTopicResponseForCreateTopic {
        if let createTopicSyncOverrideNonOptional = createTopicSyncOverride {
            if let createTopicSyncOverrideTyped = createTopicSyncOverrideNonOptional
                    as? CreateTopicSyncType<InvocationReportingType> {
                return try createTopicSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return CreateTopicResponseForCreateTopic.__default
    }

    /**
     Invokes the DeleteEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func deleteEndpointAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.DeleteEndpointInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteEndpointAsyncOverrideNonOptional = deleteEndpointAsyncOverride {
            if let deleteEndpointAsyncOverrideTyped = deleteEndpointAsyncOverrideNonOptional
                    as? DeleteEndpointAsyncType<InvocationReportingType> {
                return try deleteEndpointAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the DeleteEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func deleteEndpointSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.DeleteEndpointInput,
            reporting: InvocationReportingType) throws {
        if let deleteEndpointSyncOverrideNonOptional = deleteEndpointSyncOverride {
            if let deleteEndpointSyncOverrideTyped = deleteEndpointSyncOverrideNonOptional
                    as? DeleteEndpointSyncType<InvocationReportingType> {
                return try deleteEndpointSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the DeletePlatformApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func deletePlatformApplicationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.DeletePlatformApplicationInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deletePlatformApplicationAsyncOverrideNonOptional = deletePlatformApplicationAsyncOverride {
            if let deletePlatformApplicationAsyncOverrideTyped = deletePlatformApplicationAsyncOverrideNonOptional
                    as? DeletePlatformApplicationAsyncType<InvocationReportingType> {
                return try deletePlatformApplicationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the DeletePlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func deletePlatformApplicationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.DeletePlatformApplicationInput,
            reporting: InvocationReportingType) throws {
        if let deletePlatformApplicationSyncOverrideNonOptional = deletePlatformApplicationSyncOverride {
            if let deletePlatformApplicationSyncOverrideTyped = deletePlatformApplicationSyncOverrideNonOptional
                    as? DeletePlatformApplicationSyncType<InvocationReportingType> {
                return try deletePlatformApplicationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the DeleteTopic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, concurrentAccess, internalError, invalidParameter, notFound, staleTag, tagPolicy.
     */
    public func deleteTopicAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.DeleteTopicInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteTopicAsyncOverrideNonOptional = deleteTopicAsyncOverride {
            if let deleteTopicAsyncOverrideTyped = deleteTopicAsyncOverrideNonOptional
                    as? DeleteTopicAsyncType<InvocationReportingType> {
                return try deleteTopicAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the DeleteTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, notFound, staleTag, tagPolicy.
     */
    public func deleteTopicSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.DeleteTopicInput,
            reporting: InvocationReportingType) throws {
        if let deleteTopicSyncOverrideNonOptional = deleteTopicSyncOverride {
            if let deleteTopicSyncOverrideTyped = deleteTopicSyncOverrideNonOptional
                    as? DeleteTopicSyncType<InvocationReportingType> {
                return try deleteTopicSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

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
    public func getEndpointAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.GetEndpointAttributesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes, HTTPClientError>) -> ()) throws {
        if let getEndpointAttributesAsyncOverrideNonOptional = getEndpointAttributesAsyncOverride {
            if let getEndpointAttributesAsyncOverrideTyped = getEndpointAttributesAsyncOverrideNonOptional
                    as? GetEndpointAttributesAsyncType<InvocationReportingType> {
                return try getEndpointAttributesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = GetEndpointAttributesResponseForGetEndpointAttributes.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetEndpointAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetEndpointAttributesInput object being passed to this operation.
     - Returns: The GetEndpointAttributesResponseForGetEndpointAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getEndpointAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.GetEndpointAttributesInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes {
        if let getEndpointAttributesSyncOverrideNonOptional = getEndpointAttributesSyncOverride {
            if let getEndpointAttributesSyncOverrideTyped = getEndpointAttributesSyncOverrideNonOptional
                    as? GetEndpointAttributesSyncType<InvocationReportingType> {
                return try getEndpointAttributesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return GetEndpointAttributesResponseForGetEndpointAttributes.__default
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
    public func getPlatformApplicationAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.GetPlatformApplicationAttributesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes, HTTPClientError>) -> ()) throws {
        if let getPlatformApplicationAttributesAsyncOverrideNonOptional = getPlatformApplicationAttributesAsyncOverride {
            if let getPlatformApplicationAttributesAsyncOverrideTyped = getPlatformApplicationAttributesAsyncOverrideNonOptional
                    as? GetPlatformApplicationAttributesAsyncType<InvocationReportingType> {
                return try getPlatformApplicationAttributesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetPlatformApplicationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPlatformApplicationAttributesInput object being passed to this operation.
     - Returns: The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getPlatformApplicationAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.GetPlatformApplicationAttributesInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes {
        if let getPlatformApplicationAttributesSyncOverrideNonOptional = getPlatformApplicationAttributesSyncOverride {
            if let getPlatformApplicationAttributesSyncOverrideTyped = getPlatformApplicationAttributesSyncOverrideNonOptional
                    as? GetPlatformApplicationAttributesSyncType<InvocationReportingType> {
                return try getPlatformApplicationAttributesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes.__default
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
    public func getSMSAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.GetSMSAttributesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes, HTTPClientError>) -> ()) throws {
        if let getSMSAttributesAsyncOverrideNonOptional = getSMSAttributesAsyncOverride {
            if let getSMSAttributesAsyncOverrideTyped = getSMSAttributesAsyncOverrideNonOptional
                    as? GetSMSAttributesAsyncType<InvocationReportingType> {
                return try getSMSAttributesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = GetSMSAttributesResponseForGetSMSAttributes.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetSMSAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSMSAttributesInput object being passed to this operation.
     - Returns: The GetSMSAttributesResponseForGetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func getSMSAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.GetSMSAttributesInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes {
        if let getSMSAttributesSyncOverrideNonOptional = getSMSAttributesSyncOverride {
            if let getSMSAttributesSyncOverrideTyped = getSMSAttributesSyncOverrideNonOptional
                    as? GetSMSAttributesSyncType<InvocationReportingType> {
                return try getSMSAttributesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return GetSMSAttributesResponseForGetSMSAttributes.__default
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
    public func getSubscriptionAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.GetSubscriptionAttributesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes, HTTPClientError>) -> ()) throws {
        if let getSubscriptionAttributesAsyncOverrideNonOptional = getSubscriptionAttributesAsyncOverride {
            if let getSubscriptionAttributesAsyncOverrideTyped = getSubscriptionAttributesAsyncOverrideNonOptional
                    as? GetSubscriptionAttributesAsyncType<InvocationReportingType> {
                return try getSubscriptionAttributesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = GetSubscriptionAttributesResponseForGetSubscriptionAttributes.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetSubscriptionAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSubscriptionAttributesInput object being passed to this operation.
     - Returns: The GetSubscriptionAttributesResponseForGetSubscriptionAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getSubscriptionAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.GetSubscriptionAttributesInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes {
        if let getSubscriptionAttributesSyncOverrideNonOptional = getSubscriptionAttributesSyncOverride {
            if let getSubscriptionAttributesSyncOverrideTyped = getSubscriptionAttributesSyncOverrideNonOptional
                    as? GetSubscriptionAttributesSyncType<InvocationReportingType> {
                return try getSubscriptionAttributesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return GetSubscriptionAttributesResponseForGetSubscriptionAttributes.__default
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
    public func getTopicAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.GetTopicAttributesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes, HTTPClientError>) -> ()) throws {
        if let getTopicAttributesAsyncOverrideNonOptional = getTopicAttributesAsyncOverride {
            if let getTopicAttributesAsyncOverrideTyped = getTopicAttributesAsyncOverrideNonOptional
                    as? GetTopicAttributesAsyncType<InvocationReportingType> {
                return try getTopicAttributesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = GetTopicAttributesResponseForGetTopicAttributes.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetTopicAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTopicAttributesInput object being passed to this operation.
     - Returns: The GetTopicAttributesResponseForGetTopicAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func getTopicAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.GetTopicAttributesInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes {
        if let getTopicAttributesSyncOverrideNonOptional = getTopicAttributesSyncOverride {
            if let getTopicAttributesSyncOverrideTyped = getTopicAttributesSyncOverrideNonOptional
                    as? GetTopicAttributesSyncType<InvocationReportingType> {
                return try getTopicAttributesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return GetTopicAttributesResponseForGetTopicAttributes.__default
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
    public func listEndpointsByPlatformApplicationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication, HTTPClientError>) -> ()) throws {
        if let listEndpointsByPlatformApplicationAsyncOverrideNonOptional = listEndpointsByPlatformApplicationAsyncOverride {
            if let listEndpointsByPlatformApplicationAsyncOverrideTyped = listEndpointsByPlatformApplicationAsyncOverrideNonOptional
                    as? ListEndpointsByPlatformApplicationAsyncType<InvocationReportingType> {
                return try listEndpointsByPlatformApplicationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListEndpointsByPlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListEndpointsByPlatformApplicationInput object being passed to this operation.
     - Returns: The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func listEndpointsByPlatformApplicationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication {
        if let listEndpointsByPlatformApplicationSyncOverrideNonOptional = listEndpointsByPlatformApplicationSyncOverride {
            if let listEndpointsByPlatformApplicationSyncOverrideTyped = listEndpointsByPlatformApplicationSyncOverrideNonOptional
                    as? ListEndpointsByPlatformApplicationSyncType<InvocationReportingType> {
                return try listEndpointsByPlatformApplicationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication.__default
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
    public func listPhoneNumbersOptedOutAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut, HTTPClientError>) -> ()) throws {
        if let listPhoneNumbersOptedOutAsyncOverrideNonOptional = listPhoneNumbersOptedOutAsyncOverride {
            if let listPhoneNumbersOptedOutAsyncOverrideTyped = listPhoneNumbersOptedOutAsyncOverrideNonOptional
                    as? ListPhoneNumbersOptedOutAsyncType<InvocationReportingType> {
                return try listPhoneNumbersOptedOutAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListPhoneNumbersOptedOut operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPhoneNumbersOptedOutInput object being passed to this operation.
     - Returns: The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func listPhoneNumbersOptedOutSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut {
        if let listPhoneNumbersOptedOutSyncOverrideNonOptional = listPhoneNumbersOptedOutSyncOverride {
            if let listPhoneNumbersOptedOutSyncOverrideTyped = listPhoneNumbersOptedOutSyncOverrideNonOptional
                    as? ListPhoneNumbersOptedOutSyncType<InvocationReportingType> {
                return try listPhoneNumbersOptedOutSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut.__default
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
    public func listPlatformApplicationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListPlatformApplicationsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications, HTTPClientError>) -> ()) throws {
        if let listPlatformApplicationsAsyncOverrideNonOptional = listPlatformApplicationsAsyncOverride {
            if let listPlatformApplicationsAsyncOverrideTyped = listPlatformApplicationsAsyncOverrideNonOptional
                    as? ListPlatformApplicationsAsyncType<InvocationReportingType> {
                return try listPlatformApplicationsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = ListPlatformApplicationsResponseForListPlatformApplications.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListPlatformApplications operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPlatformApplicationsInput object being passed to this operation.
     - Returns: The ListPlatformApplicationsResponseForListPlatformApplications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func listPlatformApplicationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListPlatformApplicationsInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications {
        if let listPlatformApplicationsSyncOverrideNonOptional = listPlatformApplicationsSyncOverride {
            if let listPlatformApplicationsSyncOverrideTyped = listPlatformApplicationsSyncOverrideNonOptional
                    as? ListPlatformApplicationsSyncType<InvocationReportingType> {
                return try listPlatformApplicationsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return ListPlatformApplicationsResponseForListPlatformApplications.__default
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
    public func listSubscriptionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListSubscriptionsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions, HTTPClientError>) -> ()) throws {
        if let listSubscriptionsAsyncOverrideNonOptional = listSubscriptionsAsyncOverride {
            if let listSubscriptionsAsyncOverrideTyped = listSubscriptionsAsyncOverrideNonOptional
                    as? ListSubscriptionsAsyncType<InvocationReportingType> {
                return try listSubscriptionsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = ListSubscriptionsResponseForListSubscriptions.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListSubscriptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSubscriptionsInput object being passed to this operation.
     - Returns: The ListSubscriptionsResponseForListSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func listSubscriptionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListSubscriptionsInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions {
        if let listSubscriptionsSyncOverrideNonOptional = listSubscriptionsSyncOverride {
            if let listSubscriptionsSyncOverrideTyped = listSubscriptionsSyncOverrideNonOptional
                    as? ListSubscriptionsSyncType<InvocationReportingType> {
                return try listSubscriptionsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return ListSubscriptionsResponseForListSubscriptions.__default
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
    public func listSubscriptionsByTopicAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListSubscriptionsByTopicInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic, HTTPClientError>) -> ()) throws {
        if let listSubscriptionsByTopicAsyncOverrideNonOptional = listSubscriptionsByTopicAsyncOverride {
            if let listSubscriptionsByTopicAsyncOverrideTyped = listSubscriptionsByTopicAsyncOverrideNonOptional
                    as? ListSubscriptionsByTopicAsyncType<InvocationReportingType> {
                return try listSubscriptionsByTopicAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = ListSubscriptionsByTopicResponseForListSubscriptionsByTopic.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListSubscriptionsByTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSubscriptionsByTopicInput object being passed to this operation.
     - Returns: The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func listSubscriptionsByTopicSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListSubscriptionsByTopicInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic {
        if let listSubscriptionsByTopicSyncOverrideNonOptional = listSubscriptionsByTopicSyncOverride {
            if let listSubscriptionsByTopicSyncOverrideTyped = listSubscriptionsByTopicSyncOverrideNonOptional
                    as? ListSubscriptionsByTopicSyncType<InvocationReportingType> {
                return try listSubscriptionsByTopicSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return ListSubscriptionsByTopicResponseForListSubscriptionsByTopic.__default
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
    public func listTagsForResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListTagsForResourceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource, HTTPClientError>) -> ()) throws {
        if let listTagsForResourceAsyncOverrideNonOptional = listTagsForResourceAsyncOverride {
            if let listTagsForResourceAsyncOverrideTyped = listTagsForResourceAsyncOverrideNonOptional
                    as? ListTagsForResourceAsyncType<InvocationReportingType> {
                return try listTagsForResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = ListTagsForResourceResponseForListTagsForResource.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponseForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, tagPolicy.
     */
    public func listTagsForResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListTagsForResourceRequest,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource {
        if let listTagsForResourceSyncOverrideNonOptional = listTagsForResourceSyncOverride {
            if let listTagsForResourceSyncOverrideTyped = listTagsForResourceSyncOverrideNonOptional
                    as? ListTagsForResourceSyncType<InvocationReportingType> {
                return try listTagsForResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return ListTagsForResourceResponseForListTagsForResource.__default
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
    public func listTopicsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListTopicsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.ListTopicsResponseForListTopics, HTTPClientError>) -> ()) throws {
        if let listTopicsAsyncOverrideNonOptional = listTopicsAsyncOverride {
            if let listTopicsAsyncOverrideTyped = listTopicsAsyncOverrideNonOptional
                    as? ListTopicsAsyncType<InvocationReportingType> {
                return try listTopicsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = ListTopicsResponseForListTopics.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListTopics operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTopicsInput object being passed to this operation.
     - Returns: The ListTopicsResponseForListTopics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func listTopicsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListTopicsInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListTopicsResponseForListTopics {
        if let listTopicsSyncOverrideNonOptional = listTopicsSyncOverride {
            if let listTopicsSyncOverrideTyped = listTopicsSyncOverrideNonOptional
                    as? ListTopicsSyncType<InvocationReportingType> {
                return try listTopicsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return ListTopicsResponseForListTopics.__default
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
    public func optInPhoneNumberAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.OptInPhoneNumberInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber, HTTPClientError>) -> ()) throws {
        if let optInPhoneNumberAsyncOverrideNonOptional = optInPhoneNumberAsyncOverride {
            if let optInPhoneNumberAsyncOverrideTyped = optInPhoneNumberAsyncOverrideNonOptional
                    as? OptInPhoneNumberAsyncType<InvocationReportingType> {
                return try optInPhoneNumberAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = OptInPhoneNumberResponseForOptInPhoneNumber.__default
        
        completion(.success(result))
    }

    /**
     Invokes the OptInPhoneNumber operation waiting for the response before returning.

     - Parameters:
         - input: The validated OptInPhoneNumberInput object being passed to this operation.
     - Returns: The OptInPhoneNumberResponseForOptInPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func optInPhoneNumberSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.OptInPhoneNumberInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber {
        if let optInPhoneNumberSyncOverrideNonOptional = optInPhoneNumberSyncOverride {
            if let optInPhoneNumberSyncOverrideTyped = optInPhoneNumberSyncOverrideNonOptional
                    as? OptInPhoneNumberSyncType<InvocationReportingType> {
                return try optInPhoneNumberSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return OptInPhoneNumberResponseForOptInPhoneNumber.__default
    }

    /**
     Invokes the Publish operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PublishInput object being passed to this operation.
         - completion: The PublishResponseForPublish object or an error will be passed to this 
           callback when the operation is complete. The PublishResponseForPublish
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, endpointDisabled, internalError, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled.
     */
    public func publishAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.PublishInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.PublishResponseForPublish, HTTPClientError>) -> ()) throws {
        if let publishAsyncOverrideNonOptional = publishAsyncOverride {
            if let publishAsyncOverrideTyped = publishAsyncOverrideNonOptional
                    as? PublishAsyncType<InvocationReportingType> {
                return try publishAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = PublishResponseForPublish.__default
        
        completion(.success(result))
    }

    /**
     Invokes the Publish operation waiting for the response before returning.

     - Parameters:
         - input: The validated PublishInput object being passed to this operation.
     - Returns: The PublishResponseForPublish object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, endpointDisabled, internalError, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled.
     */
    public func publishSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.PublishInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.PublishResponseForPublish {
        if let publishSyncOverrideNonOptional = publishSyncOverride {
            if let publishSyncOverrideTyped = publishSyncOverrideNonOptional
                    as? PublishSyncType<InvocationReportingType> {
                return try publishSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return PublishResponseForPublish.__default
    }

    /**
     Invokes the RemovePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func removePermissionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.RemovePermissionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let removePermissionAsyncOverrideNonOptional = removePermissionAsyncOverride {
            if let removePermissionAsyncOverrideTyped = removePermissionAsyncOverrideNonOptional
                    as? RemovePermissionAsyncType<InvocationReportingType> {
                return try removePermissionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the RemovePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func removePermissionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.RemovePermissionInput,
            reporting: InvocationReportingType) throws {
        if let removePermissionSyncOverrideNonOptional = removePermissionSyncOverride {
            if let removePermissionSyncOverrideTyped = removePermissionSyncOverrideNonOptional
                    as? RemovePermissionSyncType<InvocationReportingType> {
                return try removePermissionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the SetEndpointAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setEndpointAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SetEndpointAttributesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let setEndpointAttributesAsyncOverrideNonOptional = setEndpointAttributesAsyncOverride {
            if let setEndpointAttributesAsyncOverrideTyped = setEndpointAttributesAsyncOverrideNonOptional
                    as? SetEndpointAttributesAsyncType<InvocationReportingType> {
                return try setEndpointAttributesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the SetEndpointAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setEndpointAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SetEndpointAttributesInput,
            reporting: InvocationReportingType) throws {
        if let setEndpointAttributesSyncOverrideNonOptional = setEndpointAttributesSyncOverride {
            if let setEndpointAttributesSyncOverrideTyped = setEndpointAttributesSyncOverrideNonOptional
                    as? SetEndpointAttributesSyncType<InvocationReportingType> {
                return try setEndpointAttributesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the SetPlatformApplicationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setPlatformApplicationAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SetPlatformApplicationAttributesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let setPlatformApplicationAttributesAsyncOverrideNonOptional = setPlatformApplicationAttributesAsyncOverride {
            if let setPlatformApplicationAttributesAsyncOverrideTyped = setPlatformApplicationAttributesAsyncOverrideNonOptional
                    as? SetPlatformApplicationAttributesAsyncType<InvocationReportingType> {
                return try setPlatformApplicationAttributesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the SetPlatformApplicationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setPlatformApplicationAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SetPlatformApplicationAttributesInput,
            reporting: InvocationReportingType) throws {
        if let setPlatformApplicationAttributesSyncOverrideNonOptional = setPlatformApplicationAttributesSyncOverride {
            if let setPlatformApplicationAttributesSyncOverrideTyped = setPlatformApplicationAttributesSyncOverrideNonOptional
                    as? SetPlatformApplicationAttributesSyncType<InvocationReportingType> {
                return try setPlatformApplicationAttributesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

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
    public func setSMSAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SetSMSAttributesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes, HTTPClientError>) -> ()) throws {
        if let setSMSAttributesAsyncOverrideNonOptional = setSMSAttributesAsyncOverride {
            if let setSMSAttributesAsyncOverrideTyped = setSMSAttributesAsyncOverrideNonOptional
                    as? SetSMSAttributesAsyncType<InvocationReportingType> {
                return try setSMSAttributesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = SetSMSAttributesResponseForSetSMSAttributes.__default
        
        completion(.success(result))
    }

    /**
     Invokes the SetSMSAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetSMSAttributesInput object being passed to this operation.
     - Returns: The SetSMSAttributesResponseForSetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func setSMSAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SetSMSAttributesInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes {
        if let setSMSAttributesSyncOverrideNonOptional = setSMSAttributesSyncOverride {
            if let setSMSAttributesSyncOverrideTyped = setSMSAttributesSyncOverrideNonOptional
                    as? SetSMSAttributesSyncType<InvocationReportingType> {
                return try setSMSAttributesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return SetSMSAttributesResponseForSetSMSAttributes.__default
    }

    /**
     Invokes the SetSubscriptionAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound.
     */
    public func setSubscriptionAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SetSubscriptionAttributesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let setSubscriptionAttributesAsyncOverrideNonOptional = setSubscriptionAttributesAsyncOverride {
            if let setSubscriptionAttributesAsyncOverrideTyped = setSubscriptionAttributesAsyncOverrideNonOptional
                    as? SetSubscriptionAttributesAsyncType<InvocationReportingType> {
                return try setSubscriptionAttributesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the SetSubscriptionAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound.
     */
    public func setSubscriptionAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SetSubscriptionAttributesInput,
            reporting: InvocationReportingType) throws {
        if let setSubscriptionAttributesSyncOverrideNonOptional = setSubscriptionAttributesSyncOverride {
            if let setSubscriptionAttributesSyncOverrideTyped = setSubscriptionAttributesSyncOverrideNonOptional
                    as? SetSubscriptionAttributesSyncType<InvocationReportingType> {
                return try setSubscriptionAttributesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the SetTopicAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func setTopicAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SetTopicAttributesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let setTopicAttributesAsyncOverrideNonOptional = setTopicAttributesAsyncOverride {
            if let setTopicAttributesAsyncOverrideTyped = setTopicAttributesAsyncOverrideNonOptional
                    as? SetTopicAttributesAsyncType<InvocationReportingType> {
                return try setTopicAttributesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the SetTopicAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func setTopicAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SetTopicAttributesInput,
            reporting: InvocationReportingType) throws {
        if let setTopicAttributesSyncOverrideNonOptional = setTopicAttributesSyncOverride {
            if let setTopicAttributesSyncOverrideTyped = setTopicAttributesSyncOverrideNonOptional
                    as? SetTopicAttributesSyncType<InvocationReportingType> {
                return try setTopicAttributesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the Subscribe operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubscribeInput object being passed to this operation.
         - completion: The SubscribeResponseForSubscribe object or an error will be passed to this 
           callback when the operation is complete. The SubscribeResponseForSubscribe
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, invalidSecurity, notFound, subscriptionLimitExceeded.
     */
    public func subscribeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SubscribeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.SubscribeResponseForSubscribe, HTTPClientError>) -> ()) throws {
        if let subscribeAsyncOverrideNonOptional = subscribeAsyncOverride {
            if let subscribeAsyncOverrideTyped = subscribeAsyncOverrideNonOptional
                    as? SubscribeAsyncType<InvocationReportingType> {
                return try subscribeAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = SubscribeResponseForSubscribe.__default
        
        completion(.success(result))
    }

    /**
     Invokes the Subscribe operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubscribeInput object being passed to this operation.
     - Returns: The SubscribeResponseForSubscribe object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, invalidSecurity, notFound, subscriptionLimitExceeded.
     */
    public func subscribeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SubscribeInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.SubscribeResponseForSubscribe {
        if let subscribeSyncOverrideNonOptional = subscribeSyncOverride {
            if let subscribeSyncOverrideTyped = subscribeSyncOverrideNonOptional
                    as? SubscribeSyncType<InvocationReportingType> {
                return try subscribeSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return SubscribeResponseForSubscribe.__default
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
    public func tagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.TagResourceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.TagResourceResponseForTagResource, HTTPClientError>) -> ()) throws {
        if let tagResourceAsyncOverrideNonOptional = tagResourceAsyncOverride {
            if let tagResourceAsyncOverrideTyped = tagResourceAsyncOverrideNonOptional
                    as? TagResourceAsyncType<InvocationReportingType> {
                return try tagResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = TagResourceResponseForTagResource.__default
        
        completion(.success(result))
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponseForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    public func tagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.TagResourceRequest,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.TagResourceResponseForTagResource {
        if let tagResourceSyncOverrideNonOptional = tagResourceSyncOverride {
            if let tagResourceSyncOverrideTyped = tagResourceSyncOverrideNonOptional
                    as? TagResourceSyncType<InvocationReportingType> {
                return try tagResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return TagResourceResponseForTagResource.__default
    }

    /**
     Invokes the Unsubscribe operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func unsubscribeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.UnsubscribeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let unsubscribeAsyncOverrideNonOptional = unsubscribeAsyncOverride {
            if let unsubscribeAsyncOverrideTyped = unsubscribeAsyncOverrideNonOptional
                    as? UnsubscribeAsyncType<InvocationReportingType> {
                return try unsubscribeAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the Unsubscribe operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func unsubscribeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.UnsubscribeInput,
            reporting: InvocationReportingType) throws {
        if let unsubscribeSyncOverrideNonOptional = unsubscribeSyncOverride {
            if let unsubscribeSyncOverrideTyped = unsubscribeSyncOverrideNonOptional
                    as? UnsubscribeSyncType<InvocationReportingType> {
                return try unsubscribeSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

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
    public func untagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.UntagResourceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.UntagResourceResponseForUntagResource, HTTPClientError>) -> ()) throws {
        if let untagResourceAsyncOverrideNonOptional = untagResourceAsyncOverride {
            if let untagResourceAsyncOverrideTyped = untagResourceAsyncOverrideNonOptional
                    as? UntagResourceAsyncType<InvocationReportingType> {
                return try untagResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = UntagResourceResponseForUntagResource.__default
        
        completion(.success(result))
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponseForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    public func untagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.UntagResourceRequest,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.UntagResourceResponseForUntagResource {
        if let untagResourceSyncOverrideNonOptional = untagResourceSyncOverride {
            if let untagResourceSyncOverrideTyped = untagResourceSyncOverrideNonOptional
                    as? UntagResourceSyncType<InvocationReportingType> {
                return try untagResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return UntagResourceResponseForUntagResource.__default
    }
}
