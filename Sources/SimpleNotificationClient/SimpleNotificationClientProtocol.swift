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
// SimpleNotificationClientProtocol.swift
// SimpleNotificationClient
//

import Foundation
import SimpleNotificationModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the SimpleNotification service.
 */
public protocol SimpleNotificationClientProtocol {
    typealias AddPermissionSyncType = (
            _ input: SimpleNotificationModel.AddPermissionInput) throws -> ()
    typealias AddPermissionAsyncType = (
            _ input: SimpleNotificationModel.AddPermissionInput, 
            _ completion: @escaping (SimpleNotificationError?) -> ()) throws -> ()
    typealias CheckIfPhoneNumberIsOptedOutSyncType = (
            _ input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput) throws -> SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut
    typealias CheckIfPhoneNumberIsOptedOutAsyncType = (
            _ input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut, SimpleNotificationError>) -> ()) throws -> ()
    typealias ConfirmSubscriptionSyncType = (
            _ input: SimpleNotificationModel.ConfirmSubscriptionInput) throws -> SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription
    typealias ConfirmSubscriptionAsyncType = (
            _ input: SimpleNotificationModel.ConfirmSubscriptionInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription, SimpleNotificationError>) -> ()) throws -> ()
    typealias CreatePlatformApplicationSyncType = (
            _ input: SimpleNotificationModel.CreatePlatformApplicationInput) throws -> SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication
    typealias CreatePlatformApplicationAsyncType = (
            _ input: SimpleNotificationModel.CreatePlatformApplicationInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication, SimpleNotificationError>) -> ()) throws -> ()
    typealias CreatePlatformEndpointSyncType = (
            _ input: SimpleNotificationModel.CreatePlatformEndpointInput) throws -> SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint
    typealias CreatePlatformEndpointAsyncType = (
            _ input: SimpleNotificationModel.CreatePlatformEndpointInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint, SimpleNotificationError>) -> ()) throws -> ()
    typealias CreateSMSSandboxPhoneNumberSyncType = (
            _ input: SimpleNotificationModel.CreateSMSSandboxPhoneNumberInput) throws -> SimpleNotificationModel.CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber
    typealias CreateSMSSandboxPhoneNumberAsyncType = (
            _ input: SimpleNotificationModel.CreateSMSSandboxPhoneNumberInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber, SimpleNotificationError>) -> ()) throws -> ()
    typealias CreateTopicSyncType = (
            _ input: SimpleNotificationModel.CreateTopicInput) throws -> SimpleNotificationModel.CreateTopicResponseForCreateTopic
    typealias CreateTopicAsyncType = (
            _ input: SimpleNotificationModel.CreateTopicInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.CreateTopicResponseForCreateTopic, SimpleNotificationError>) -> ()) throws -> ()
    typealias DeleteEndpointSyncType = (
            _ input: SimpleNotificationModel.DeleteEndpointInput) throws -> ()
    typealias DeleteEndpointAsyncType = (
            _ input: SimpleNotificationModel.DeleteEndpointInput, 
            _ completion: @escaping (SimpleNotificationError?) -> ()) throws -> ()
    typealias DeletePlatformApplicationSyncType = (
            _ input: SimpleNotificationModel.DeletePlatformApplicationInput) throws -> ()
    typealias DeletePlatformApplicationAsyncType = (
            _ input: SimpleNotificationModel.DeletePlatformApplicationInput, 
            _ completion: @escaping (SimpleNotificationError?) -> ()) throws -> ()
    typealias DeleteSMSSandboxPhoneNumberSyncType = (
            _ input: SimpleNotificationModel.DeleteSMSSandboxPhoneNumberInput) throws -> SimpleNotificationModel.DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber
    typealias DeleteSMSSandboxPhoneNumberAsyncType = (
            _ input: SimpleNotificationModel.DeleteSMSSandboxPhoneNumberInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber, SimpleNotificationError>) -> ()) throws -> ()
    typealias DeleteTopicSyncType = (
            _ input: SimpleNotificationModel.DeleteTopicInput) throws -> ()
    typealias DeleteTopicAsyncType = (
            _ input: SimpleNotificationModel.DeleteTopicInput, 
            _ completion: @escaping (SimpleNotificationError?) -> ()) throws -> ()
    typealias GetEndpointAttributesSyncType = (
            _ input: SimpleNotificationModel.GetEndpointAttributesInput) throws -> SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes
    typealias GetEndpointAttributesAsyncType = (
            _ input: SimpleNotificationModel.GetEndpointAttributesInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes, SimpleNotificationError>) -> ()) throws -> ()
    typealias GetPlatformApplicationAttributesSyncType = (
            _ input: SimpleNotificationModel.GetPlatformApplicationAttributesInput) throws -> SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes
    typealias GetPlatformApplicationAttributesAsyncType = (
            _ input: SimpleNotificationModel.GetPlatformApplicationAttributesInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes, SimpleNotificationError>) -> ()) throws -> ()
    typealias GetSMSAttributesSyncType = (
            _ input: SimpleNotificationModel.GetSMSAttributesInput) throws -> SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes
    typealias GetSMSAttributesAsyncType = (
            _ input: SimpleNotificationModel.GetSMSAttributesInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes, SimpleNotificationError>) -> ()) throws -> ()
    typealias GetSMSSandboxAccountStatusSyncType = (
            _ input: SimpleNotificationModel.GetSMSSandboxAccountStatusInput) throws -> SimpleNotificationModel.GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus
    typealias GetSMSSandboxAccountStatusAsyncType = (
            _ input: SimpleNotificationModel.GetSMSSandboxAccountStatusInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus, SimpleNotificationError>) -> ()) throws -> ()
    typealias GetSubscriptionAttributesSyncType = (
            _ input: SimpleNotificationModel.GetSubscriptionAttributesInput) throws -> SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes
    typealias GetSubscriptionAttributesAsyncType = (
            _ input: SimpleNotificationModel.GetSubscriptionAttributesInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes, SimpleNotificationError>) -> ()) throws -> ()
    typealias GetTopicAttributesSyncType = (
            _ input: SimpleNotificationModel.GetTopicAttributesInput) throws -> SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes
    typealias GetTopicAttributesAsyncType = (
            _ input: SimpleNotificationModel.GetTopicAttributesInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes, SimpleNotificationError>) -> ()) throws -> ()
    typealias ListEndpointsByPlatformApplicationSyncType = (
            _ input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput) throws -> SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication
    typealias ListEndpointsByPlatformApplicationAsyncType = (
            _ input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication, SimpleNotificationError>) -> ()) throws -> ()
    typealias ListOriginationNumbersSyncType = (
            _ input: SimpleNotificationModel.ListOriginationNumbersRequest) throws -> SimpleNotificationModel.ListOriginationNumbersResultForListOriginationNumbers
    typealias ListOriginationNumbersAsyncType = (
            _ input: SimpleNotificationModel.ListOriginationNumbersRequest, 
            _ completion: @escaping (Result<SimpleNotificationModel.ListOriginationNumbersResultForListOriginationNumbers, SimpleNotificationError>) -> ()) throws -> ()
    typealias ListPhoneNumbersOptedOutSyncType = (
            _ input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput) throws -> SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut
    typealias ListPhoneNumbersOptedOutAsyncType = (
            _ input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut, SimpleNotificationError>) -> ()) throws -> ()
    typealias ListPlatformApplicationsSyncType = (
            _ input: SimpleNotificationModel.ListPlatformApplicationsInput) throws -> SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications
    typealias ListPlatformApplicationsAsyncType = (
            _ input: SimpleNotificationModel.ListPlatformApplicationsInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications, SimpleNotificationError>) -> ()) throws -> ()
    typealias ListSMSSandboxPhoneNumbersSyncType = (
            _ input: SimpleNotificationModel.ListSMSSandboxPhoneNumbersInput) throws -> SimpleNotificationModel.ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers
    typealias ListSMSSandboxPhoneNumbersAsyncType = (
            _ input: SimpleNotificationModel.ListSMSSandboxPhoneNumbersInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers, SimpleNotificationError>) -> ()) throws -> ()
    typealias ListSubscriptionsSyncType = (
            _ input: SimpleNotificationModel.ListSubscriptionsInput) throws -> SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions
    typealias ListSubscriptionsAsyncType = (
            _ input: SimpleNotificationModel.ListSubscriptionsInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions, SimpleNotificationError>) -> ()) throws -> ()
    typealias ListSubscriptionsByTopicSyncType = (
            _ input: SimpleNotificationModel.ListSubscriptionsByTopicInput) throws -> SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic
    typealias ListSubscriptionsByTopicAsyncType = (
            _ input: SimpleNotificationModel.ListSubscriptionsByTopicInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic, SimpleNotificationError>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType = (
            _ input: SimpleNotificationModel.ListTagsForResourceRequest) throws -> SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource
    typealias ListTagsForResourceAsyncType = (
            _ input: SimpleNotificationModel.ListTagsForResourceRequest, 
            _ completion: @escaping (Result<SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource, SimpleNotificationError>) -> ()) throws -> ()
    typealias ListTopicsSyncType = (
            _ input: SimpleNotificationModel.ListTopicsInput) throws -> SimpleNotificationModel.ListTopicsResponseForListTopics
    typealias ListTopicsAsyncType = (
            _ input: SimpleNotificationModel.ListTopicsInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.ListTopicsResponseForListTopics, SimpleNotificationError>) -> ()) throws -> ()
    typealias OptInPhoneNumberSyncType = (
            _ input: SimpleNotificationModel.OptInPhoneNumberInput) throws -> SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber
    typealias OptInPhoneNumberAsyncType = (
            _ input: SimpleNotificationModel.OptInPhoneNumberInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber, SimpleNotificationError>) -> ()) throws -> ()
    typealias PublishSyncType = (
            _ input: SimpleNotificationModel.PublishInput) throws -> SimpleNotificationModel.PublishResponseForPublish
    typealias PublishAsyncType = (
            _ input: SimpleNotificationModel.PublishInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.PublishResponseForPublish, SimpleNotificationError>) -> ()) throws -> ()
    typealias PublishBatchSyncType = (
            _ input: SimpleNotificationModel.PublishBatchInput) throws -> SimpleNotificationModel.PublishBatchResponseForPublishBatch
    typealias PublishBatchAsyncType = (
            _ input: SimpleNotificationModel.PublishBatchInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.PublishBatchResponseForPublishBatch, SimpleNotificationError>) -> ()) throws -> ()
    typealias RemovePermissionSyncType = (
            _ input: SimpleNotificationModel.RemovePermissionInput) throws -> ()
    typealias RemovePermissionAsyncType = (
            _ input: SimpleNotificationModel.RemovePermissionInput, 
            _ completion: @escaping (SimpleNotificationError?) -> ()) throws -> ()
    typealias SetEndpointAttributesSyncType = (
            _ input: SimpleNotificationModel.SetEndpointAttributesInput) throws -> ()
    typealias SetEndpointAttributesAsyncType = (
            _ input: SimpleNotificationModel.SetEndpointAttributesInput, 
            _ completion: @escaping (SimpleNotificationError?) -> ()) throws -> ()
    typealias SetPlatformApplicationAttributesSyncType = (
            _ input: SimpleNotificationModel.SetPlatformApplicationAttributesInput) throws -> ()
    typealias SetPlatformApplicationAttributesAsyncType = (
            _ input: SimpleNotificationModel.SetPlatformApplicationAttributesInput, 
            _ completion: @escaping (SimpleNotificationError?) -> ()) throws -> ()
    typealias SetSMSAttributesSyncType = (
            _ input: SimpleNotificationModel.SetSMSAttributesInput) throws -> SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes
    typealias SetSMSAttributesAsyncType = (
            _ input: SimpleNotificationModel.SetSMSAttributesInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes, SimpleNotificationError>) -> ()) throws -> ()
    typealias SetSubscriptionAttributesSyncType = (
            _ input: SimpleNotificationModel.SetSubscriptionAttributesInput) throws -> ()
    typealias SetSubscriptionAttributesAsyncType = (
            _ input: SimpleNotificationModel.SetSubscriptionAttributesInput, 
            _ completion: @escaping (SimpleNotificationError?) -> ()) throws -> ()
    typealias SetTopicAttributesSyncType = (
            _ input: SimpleNotificationModel.SetTopicAttributesInput) throws -> ()
    typealias SetTopicAttributesAsyncType = (
            _ input: SimpleNotificationModel.SetTopicAttributesInput, 
            _ completion: @escaping (SimpleNotificationError?) -> ()) throws -> ()
    typealias SubscribeSyncType = (
            _ input: SimpleNotificationModel.SubscribeInput) throws -> SimpleNotificationModel.SubscribeResponseForSubscribe
    typealias SubscribeAsyncType = (
            _ input: SimpleNotificationModel.SubscribeInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.SubscribeResponseForSubscribe, SimpleNotificationError>) -> ()) throws -> ()
    typealias TagResourceSyncType = (
            _ input: SimpleNotificationModel.TagResourceRequest) throws -> SimpleNotificationModel.TagResourceResponseForTagResource
    typealias TagResourceAsyncType = (
            _ input: SimpleNotificationModel.TagResourceRequest, 
            _ completion: @escaping (Result<SimpleNotificationModel.TagResourceResponseForTagResource, SimpleNotificationError>) -> ()) throws -> ()
    typealias UnsubscribeSyncType = (
            _ input: SimpleNotificationModel.UnsubscribeInput) throws -> ()
    typealias UnsubscribeAsyncType = (
            _ input: SimpleNotificationModel.UnsubscribeInput, 
            _ completion: @escaping (SimpleNotificationError?) -> ()) throws -> ()
    typealias UntagResourceSyncType = (
            _ input: SimpleNotificationModel.UntagResourceRequest) throws -> SimpleNotificationModel.UntagResourceResponseForUntagResource
    typealias UntagResourceAsyncType = (
            _ input: SimpleNotificationModel.UntagResourceRequest, 
            _ completion: @escaping (Result<SimpleNotificationModel.UntagResourceResponseForUntagResource, SimpleNotificationError>) -> ()) throws -> ()
    typealias VerifySMSSandboxPhoneNumberSyncType = (
            _ input: SimpleNotificationModel.VerifySMSSandboxPhoneNumberInput) throws -> SimpleNotificationModel.VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber
    typealias VerifySMSSandboxPhoneNumberAsyncType = (
            _ input: SimpleNotificationModel.VerifySMSSandboxPhoneNumberInput, 
            _ completion: @escaping (Result<SimpleNotificationModel.VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber, SimpleNotificationError>) -> ()) throws -> ()

    /**
     Invokes the AddPermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func addPermissionAsync(
            input: SimpleNotificationModel.AddPermissionInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws

    /**
     Invokes the AddPermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func addPermissionSync(
            input: SimpleNotificationModel.AddPermissionInput) throws

    /**
     Invokes the CheckIfPhoneNumberIsOptedOut operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CheckIfPhoneNumberIsOptedOutInput object being passed to this operation.
         - completion: The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut object or an error will be passed to this 
           callback when the operation is complete. The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    func checkIfPhoneNumberIsOptedOutAsync(
            input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput, 
            completion: @escaping (Result<SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the CheckIfPhoneNumberIsOptedOut operation waiting for the response before returning.

     - Parameters:
         - input: The validated CheckIfPhoneNumberIsOptedOutInput object being passed to this operation.
     - Returns: The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func checkIfPhoneNumberIsOptedOutSync(
            input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput) throws -> SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut

    /**
     Invokes the ConfirmSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ConfirmSubscriptionInput object being passed to this operation.
         - completion: The ConfirmSubscriptionResponseForConfirmSubscription object or an error will be passed to this 
           callback when the operation is complete. The ConfirmSubscriptionResponseForConfirmSubscription
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, subscriptionLimitExceeded.
     */
    func confirmSubscriptionAsync(
            input: SimpleNotificationModel.ConfirmSubscriptionInput, 
            completion: @escaping (Result<SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the ConfirmSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated ConfirmSubscriptionInput object being passed to this operation.
     - Returns: The ConfirmSubscriptionResponseForConfirmSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, subscriptionLimitExceeded.
     */
    func confirmSubscriptionSync(
            input: SimpleNotificationModel.ConfirmSubscriptionInput) throws -> SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription

    /**
     Invokes the CreatePlatformApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePlatformApplicationInput object being passed to this operation.
         - completion: The CreatePlatformApplicationResponseForCreatePlatformApplication object or an error will be passed to this 
           callback when the operation is complete. The CreatePlatformApplicationResponseForCreatePlatformApplication
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func createPlatformApplicationAsync(
            input: SimpleNotificationModel.CreatePlatformApplicationInput, 
            completion: @escaping (Result<SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the CreatePlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlatformApplicationInput object being passed to this operation.
     - Returns: The CreatePlatformApplicationResponseForCreatePlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func createPlatformApplicationSync(
            input: SimpleNotificationModel.CreatePlatformApplicationInput) throws -> SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication

    /**
     Invokes the CreatePlatformEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePlatformEndpointInput object being passed to this operation.
         - completion: The CreateEndpointResponseForCreatePlatformEndpoint object or an error will be passed to this 
           callback when the operation is complete. The CreateEndpointResponseForCreatePlatformEndpoint
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func createPlatformEndpointAsync(
            input: SimpleNotificationModel.CreatePlatformEndpointInput, 
            completion: @escaping (Result<SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the CreatePlatformEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlatformEndpointInput object being passed to this operation.
     - Returns: The CreateEndpointResponseForCreatePlatformEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func createPlatformEndpointSync(
            input: SimpleNotificationModel.CreatePlatformEndpointInput) throws -> SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint

    /**
     Invokes the CreateSMSSandboxPhoneNumber operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSMSSandboxPhoneNumberInput object being passed to this operation.
         - completion: The CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber object or an error will be passed to this 
           callback when the operation is complete. The CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, optedOut, throttled, userError.
     */
    func createSMSSandboxPhoneNumberAsync(
            input: SimpleNotificationModel.CreateSMSSandboxPhoneNumberInput, 
            completion: @escaping (Result<SimpleNotificationModel.CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the CreateSMSSandboxPhoneNumber operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSMSSandboxPhoneNumberInput object being passed to this operation.
     - Returns: The CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, optedOut, throttled, userError.
     */
    func createSMSSandboxPhoneNumberSync(
            input: SimpleNotificationModel.CreateSMSSandboxPhoneNumberInput) throws -> SimpleNotificationModel.CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber

    /**
     Invokes the CreateTopic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTopicInput object being passed to this operation.
         - completion: The CreateTopicResponseForCreateTopic object or an error will be passed to this 
           callback when the operation is complete. The CreateTopicResponseForCreateTopic
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, internalError, invalidParameter, invalidSecurity, staleTag, tagLimitExceeded, tagPolicy, topicLimitExceeded.
     */
    func createTopicAsync(
            input: SimpleNotificationModel.CreateTopicInput, 
            completion: @escaping (Result<SimpleNotificationModel.CreateTopicResponseForCreateTopic, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the CreateTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTopicInput object being passed to this operation.
     - Returns: The CreateTopicResponseForCreateTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, invalidSecurity, staleTag, tagLimitExceeded, tagPolicy, topicLimitExceeded.
     */
    func createTopicSync(
            input: SimpleNotificationModel.CreateTopicInput) throws -> SimpleNotificationModel.CreateTopicResponseForCreateTopic

    /**
     Invokes the DeleteEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func deleteEndpointAsync(
            input: SimpleNotificationModel.DeleteEndpointInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws

    /**
     Invokes the DeleteEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func deleteEndpointSync(
            input: SimpleNotificationModel.DeleteEndpointInput) throws

    /**
     Invokes the DeletePlatformApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func deletePlatformApplicationAsync(
            input: SimpleNotificationModel.DeletePlatformApplicationInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws

    /**
     Invokes the DeletePlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func deletePlatformApplicationSync(
            input: SimpleNotificationModel.DeletePlatformApplicationInput) throws

    /**
     Invokes the DeleteSMSSandboxPhoneNumber operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSMSSandboxPhoneNumberInput object being passed to this operation.
         - completion: The DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber object or an error will be passed to this 
           callback when the operation is complete. The DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, resourceNotFound, throttled, userError.
     */
    func deleteSMSSandboxPhoneNumberAsync(
            input: SimpleNotificationModel.DeleteSMSSandboxPhoneNumberInput, 
            completion: @escaping (Result<SimpleNotificationModel.DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the DeleteSMSSandboxPhoneNumber operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSMSSandboxPhoneNumberInput object being passed to this operation.
     - Returns: The DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, resourceNotFound, throttled, userError.
     */
    func deleteSMSSandboxPhoneNumberSync(
            input: SimpleNotificationModel.DeleteSMSSandboxPhoneNumberInput) throws -> SimpleNotificationModel.DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber

    /**
     Invokes the DeleteTopic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, concurrentAccess, internalError, invalidParameter, notFound, staleTag, tagPolicy.
     */
    func deleteTopicAsync(
            input: SimpleNotificationModel.DeleteTopicInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws

    /**
     Invokes the DeleteTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, notFound, staleTag, tagPolicy.
     */
    func deleteTopicSync(
            input: SimpleNotificationModel.DeleteTopicInput) throws

    /**
     Invokes the GetEndpointAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetEndpointAttributesInput object being passed to this operation.
         - completion: The GetEndpointAttributesResponseForGetEndpointAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetEndpointAttributesResponseForGetEndpointAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func getEndpointAttributesAsync(
            input: SimpleNotificationModel.GetEndpointAttributesInput, 
            completion: @escaping (Result<SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the GetEndpointAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetEndpointAttributesInput object being passed to this operation.
     - Returns: The GetEndpointAttributesResponseForGetEndpointAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func getEndpointAttributesSync(
            input: SimpleNotificationModel.GetEndpointAttributesInput) throws -> SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes

    /**
     Invokes the GetPlatformApplicationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPlatformApplicationAttributesInput object being passed to this operation.
         - completion: The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func getPlatformApplicationAttributesAsync(
            input: SimpleNotificationModel.GetPlatformApplicationAttributesInput, 
            completion: @escaping (Result<SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the GetPlatformApplicationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPlatformApplicationAttributesInput object being passed to this operation.
     - Returns: The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func getPlatformApplicationAttributesSync(
            input: SimpleNotificationModel.GetPlatformApplicationAttributesInput) throws -> SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes

    /**
     Invokes the GetSMSAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetSMSAttributesInput object being passed to this operation.
         - completion: The GetSMSAttributesResponseForGetSMSAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetSMSAttributesResponseForGetSMSAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    func getSMSAttributesAsync(
            input: SimpleNotificationModel.GetSMSAttributesInput, 
            completion: @escaping (Result<SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the GetSMSAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSMSAttributesInput object being passed to this operation.
     - Returns: The GetSMSAttributesResponseForGetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func getSMSAttributesSync(
            input: SimpleNotificationModel.GetSMSAttributesInput) throws -> SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes

    /**
     Invokes the GetSMSSandboxAccountStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetSMSSandboxAccountStatusInput object being passed to this operation.
         - completion: The GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus object or an error will be passed to this 
           callback when the operation is complete. The GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, throttled.
     */
    func getSMSSandboxAccountStatusAsync(
            input: SimpleNotificationModel.GetSMSSandboxAccountStatusInput, 
            completion: @escaping (Result<SimpleNotificationModel.GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the GetSMSSandboxAccountStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSMSSandboxAccountStatusInput object being passed to this operation.
     - Returns: The GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, throttled.
     */
    func getSMSSandboxAccountStatusSync(
            input: SimpleNotificationModel.GetSMSSandboxAccountStatusInput) throws -> SimpleNotificationModel.GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus

    /**
     Invokes the GetSubscriptionAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetSubscriptionAttributesInput object being passed to this operation.
         - completion: The GetSubscriptionAttributesResponseForGetSubscriptionAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetSubscriptionAttributesResponseForGetSubscriptionAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func getSubscriptionAttributesAsync(
            input: SimpleNotificationModel.GetSubscriptionAttributesInput, 
            completion: @escaping (Result<SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the GetSubscriptionAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSubscriptionAttributesInput object being passed to this operation.
     - Returns: The GetSubscriptionAttributesResponseForGetSubscriptionAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func getSubscriptionAttributesSync(
            input: SimpleNotificationModel.GetSubscriptionAttributesInput) throws -> SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes

    /**
     Invokes the GetTopicAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTopicAttributesInput object being passed to this operation.
         - completion: The GetTopicAttributesResponseForGetTopicAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetTopicAttributesResponseForGetTopicAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func getTopicAttributesAsync(
            input: SimpleNotificationModel.GetTopicAttributesInput, 
            completion: @escaping (Result<SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the GetTopicAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTopicAttributesInput object being passed to this operation.
     - Returns: The GetTopicAttributesResponseForGetTopicAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func getTopicAttributesSync(
            input: SimpleNotificationModel.GetTopicAttributesInput) throws -> SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes

    /**
     Invokes the ListEndpointsByPlatformApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListEndpointsByPlatformApplicationInput object being passed to this operation.
         - completion: The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication object or an error will be passed to this 
           callback when the operation is complete. The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func listEndpointsByPlatformApplicationAsync(
            input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput, 
            completion: @escaping (Result<SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the ListEndpointsByPlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListEndpointsByPlatformApplicationInput object being passed to this operation.
     - Returns: The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func listEndpointsByPlatformApplicationSync(
            input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput) throws -> SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication

    /**
     Invokes the ListOriginationNumbers operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListOriginationNumbersRequest object being passed to this operation.
         - completion: The ListOriginationNumbersResultForListOriginationNumbers object or an error will be passed to this 
           callback when the operation is complete. The ListOriginationNumbersResultForListOriginationNumbers
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled, validation.
     */
    func listOriginationNumbersAsync(
            input: SimpleNotificationModel.ListOriginationNumbersRequest, 
            completion: @escaping (Result<SimpleNotificationModel.ListOriginationNumbersResultForListOriginationNumbers, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the ListOriginationNumbers operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListOriginationNumbersRequest object being passed to this operation.
     - Returns: The ListOriginationNumbersResultForListOriginationNumbers object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled, validation.
     */
    func listOriginationNumbersSync(
            input: SimpleNotificationModel.ListOriginationNumbersRequest) throws -> SimpleNotificationModel.ListOriginationNumbersResultForListOriginationNumbers

    /**
     Invokes the ListPhoneNumbersOptedOut operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPhoneNumbersOptedOutInput object being passed to this operation.
         - completion: The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut object or an error will be passed to this 
           callback when the operation is complete. The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    func listPhoneNumbersOptedOutAsync(
            input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput, 
            completion: @escaping (Result<SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the ListPhoneNumbersOptedOut operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPhoneNumbersOptedOutInput object being passed to this operation.
     - Returns: The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func listPhoneNumbersOptedOutSync(
            input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput) throws -> SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut

    /**
     Invokes the ListPlatformApplications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPlatformApplicationsInput object being passed to this operation.
         - completion: The ListPlatformApplicationsResponseForListPlatformApplications object or an error will be passed to this 
           callback when the operation is complete. The ListPlatformApplicationsResponseForListPlatformApplications
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func listPlatformApplicationsAsync(
            input: SimpleNotificationModel.ListPlatformApplicationsInput, 
            completion: @escaping (Result<SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the ListPlatformApplications operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPlatformApplicationsInput object being passed to this operation.
     - Returns: The ListPlatformApplicationsResponseForListPlatformApplications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func listPlatformApplicationsSync(
            input: SimpleNotificationModel.ListPlatformApplicationsInput) throws -> SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications

    /**
     Invokes the ListSMSSandboxPhoneNumbers operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSMSSandboxPhoneNumbersInput object being passed to this operation.
         - completion: The ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers object or an error will be passed to this 
           callback when the operation is complete. The ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, resourceNotFound, throttled.
     */
    func listSMSSandboxPhoneNumbersAsync(
            input: SimpleNotificationModel.ListSMSSandboxPhoneNumbersInput, 
            completion: @escaping (Result<SimpleNotificationModel.ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the ListSMSSandboxPhoneNumbers operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSMSSandboxPhoneNumbersInput object being passed to this operation.
     - Returns: The ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, resourceNotFound, throttled.
     */
    func listSMSSandboxPhoneNumbersSync(
            input: SimpleNotificationModel.ListSMSSandboxPhoneNumbersInput) throws -> SimpleNotificationModel.ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers

    /**
     Invokes the ListSubscriptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSubscriptionsInput object being passed to this operation.
         - completion: The ListSubscriptionsResponseForListSubscriptions object or an error will be passed to this 
           callback when the operation is complete. The ListSubscriptionsResponseForListSubscriptions
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func listSubscriptionsAsync(
            input: SimpleNotificationModel.ListSubscriptionsInput, 
            completion: @escaping (Result<SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the ListSubscriptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSubscriptionsInput object being passed to this operation.
     - Returns: The ListSubscriptionsResponseForListSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func listSubscriptionsSync(
            input: SimpleNotificationModel.ListSubscriptionsInput) throws -> SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions

    /**
     Invokes the ListSubscriptionsByTopic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSubscriptionsByTopicInput object being passed to this operation.
         - completion: The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic object or an error will be passed to this 
           callback when the operation is complete. The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func listSubscriptionsByTopicAsync(
            input: SimpleNotificationModel.ListSubscriptionsByTopicInput, 
            completion: @escaping (Result<SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the ListSubscriptionsByTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSubscriptionsByTopicInput object being passed to this operation.
     - Returns: The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func listSubscriptionsByTopicSync(
            input: SimpleNotificationModel.ListSubscriptionsByTopicInput) throws -> SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
         - completion: The ListTagsForResourceResponseForListTagsForResource object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceResponseForListTagsForResource
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, tagPolicy.
     */
    func listTagsForResourceAsync(
            input: SimpleNotificationModel.ListTagsForResourceRequest, 
            completion: @escaping (Result<SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponseForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, tagPolicy.
     */
    func listTagsForResourceSync(
            input: SimpleNotificationModel.ListTagsForResourceRequest) throws -> SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource

    /**
     Invokes the ListTopics operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTopicsInput object being passed to this operation.
         - completion: The ListTopicsResponseForListTopics object or an error will be passed to this 
           callback when the operation is complete. The ListTopicsResponseForListTopics
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func listTopicsAsync(
            input: SimpleNotificationModel.ListTopicsInput, 
            completion: @escaping (Result<SimpleNotificationModel.ListTopicsResponseForListTopics, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the ListTopics operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTopicsInput object being passed to this operation.
     - Returns: The ListTopicsResponseForListTopics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func listTopicsSync(
            input: SimpleNotificationModel.ListTopicsInput) throws -> SimpleNotificationModel.ListTopicsResponseForListTopics

    /**
     Invokes the OptInPhoneNumber operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated OptInPhoneNumberInput object being passed to this operation.
         - completion: The OptInPhoneNumberResponseForOptInPhoneNumber object or an error will be passed to this 
           callback when the operation is complete. The OptInPhoneNumberResponseForOptInPhoneNumber
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    func optInPhoneNumberAsync(
            input: SimpleNotificationModel.OptInPhoneNumberInput, 
            completion: @escaping (Result<SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the OptInPhoneNumber operation waiting for the response before returning.

     - Parameters:
         - input: The validated OptInPhoneNumberInput object being passed to this operation.
     - Returns: The OptInPhoneNumberResponseForOptInPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func optInPhoneNumberSync(
            input: SimpleNotificationModel.OptInPhoneNumberInput) throws -> SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber

    /**
     Invokes the Publish operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PublishInput object being passed to this operation.
         - completion: The PublishResponseForPublish object or an error will be passed to this 
           callback when the operation is complete. The PublishResponseForPublish
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, endpointDisabled, internalError, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled.
     */
    func publishAsync(
            input: SimpleNotificationModel.PublishInput, 
            completion: @escaping (Result<SimpleNotificationModel.PublishResponseForPublish, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the Publish operation waiting for the response before returning.

     - Parameters:
         - input: The validated PublishInput object being passed to this operation.
     - Returns: The PublishResponseForPublish object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, endpointDisabled, internalError, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled.
     */
    func publishSync(
            input: SimpleNotificationModel.PublishInput) throws -> SimpleNotificationModel.PublishResponseForPublish

    /**
     Invokes the PublishBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PublishBatchInput object being passed to this operation.
         - completion: The PublishBatchResponseForPublishBatch object or an error will be passed to this 
           callback when the operation is complete. The PublishBatchResponseForPublishBatch
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, batchEntryIdsNotDistinct, batchRequestTooLong, emptyBatchRequest, endpointDisabled, internalError, invalidBatchEntryId, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled, tooManyEntriesInBatchRequest.
     */
    func publishBatchAsync(
            input: SimpleNotificationModel.PublishBatchInput, 
            completion: @escaping (Result<SimpleNotificationModel.PublishBatchResponseForPublishBatch, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the PublishBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated PublishBatchInput object being passed to this operation.
     - Returns: The PublishBatchResponseForPublishBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, batchEntryIdsNotDistinct, batchRequestTooLong, emptyBatchRequest, endpointDisabled, internalError, invalidBatchEntryId, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled, tooManyEntriesInBatchRequest.
     */
    func publishBatchSync(
            input: SimpleNotificationModel.PublishBatchInput) throws -> SimpleNotificationModel.PublishBatchResponseForPublishBatch

    /**
     Invokes the RemovePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func removePermissionAsync(
            input: SimpleNotificationModel.RemovePermissionInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws

    /**
     Invokes the RemovePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func removePermissionSync(
            input: SimpleNotificationModel.RemovePermissionInput) throws

    /**
     Invokes the SetEndpointAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func setEndpointAttributesAsync(
            input: SimpleNotificationModel.SetEndpointAttributesInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws

    /**
     Invokes the SetEndpointAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func setEndpointAttributesSync(
            input: SimpleNotificationModel.SetEndpointAttributesInput) throws

    /**
     Invokes the SetPlatformApplicationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func setPlatformApplicationAttributesAsync(
            input: SimpleNotificationModel.SetPlatformApplicationAttributesInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws

    /**
     Invokes the SetPlatformApplicationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func setPlatformApplicationAttributesSync(
            input: SimpleNotificationModel.SetPlatformApplicationAttributesInput) throws

    /**
     Invokes the SetSMSAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetSMSAttributesInput object being passed to this operation.
         - completion: The SetSMSAttributesResponseForSetSMSAttributes object or an error will be passed to this 
           callback when the operation is complete. The SetSMSAttributesResponseForSetSMSAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    func setSMSAttributesAsync(
            input: SimpleNotificationModel.SetSMSAttributesInput, 
            completion: @escaping (Result<SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the SetSMSAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetSMSAttributesInput object being passed to this operation.
     - Returns: The SetSMSAttributesResponseForSetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func setSMSAttributesSync(
            input: SimpleNotificationModel.SetSMSAttributesInput) throws -> SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes

    /**
     Invokes the SetSubscriptionAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound.
     */
    func setSubscriptionAttributesAsync(
            input: SimpleNotificationModel.SetSubscriptionAttributesInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws

    /**
     Invokes the SetSubscriptionAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound.
     */
    func setSubscriptionAttributesSync(
            input: SimpleNotificationModel.SetSubscriptionAttributesInput) throws

    /**
     Invokes the SetTopicAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func setTopicAttributesAsync(
            input: SimpleNotificationModel.SetTopicAttributesInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws

    /**
     Invokes the SetTopicAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func setTopicAttributesSync(
            input: SimpleNotificationModel.SetTopicAttributesInput) throws

    /**
     Invokes the Subscribe operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubscribeInput object being passed to this operation.
         - completion: The SubscribeResponseForSubscribe object or an error will be passed to this 
           callback when the operation is complete. The SubscribeResponseForSubscribe
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, invalidSecurity, notFound, subscriptionLimitExceeded.
     */
    func subscribeAsync(
            input: SimpleNotificationModel.SubscribeInput, 
            completion: @escaping (Result<SimpleNotificationModel.SubscribeResponseForSubscribe, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the Subscribe operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubscribeInput object being passed to this operation.
     - Returns: The SubscribeResponseForSubscribe object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, invalidSecurity, notFound, subscriptionLimitExceeded.
     */
    func subscribeSync(
            input: SimpleNotificationModel.SubscribeInput) throws -> SimpleNotificationModel.SubscribeResponseForSubscribe

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
         - completion: The TagResourceResponseForTagResource object or an error will be passed to this 
           callback when the operation is complete. The TagResourceResponseForTagResource
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    func tagResourceAsync(
            input: SimpleNotificationModel.TagResourceRequest, 
            completion: @escaping (Result<SimpleNotificationModel.TagResourceResponseForTagResource, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponseForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    func tagResourceSync(
            input: SimpleNotificationModel.TagResourceRequest) throws -> SimpleNotificationModel.TagResourceResponseForTagResource

    /**
     Invokes the Unsubscribe operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func unsubscribeAsync(
            input: SimpleNotificationModel.UnsubscribeInput, 
            completion: @escaping (SimpleNotificationError?) -> ()) throws

    /**
     Invokes the Unsubscribe operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func unsubscribeSync(
            input: SimpleNotificationModel.UnsubscribeInput) throws

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
         - completion: The UntagResourceResponseForUntagResource object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceResponseForUntagResource
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    func untagResourceAsync(
            input: SimpleNotificationModel.UntagResourceRequest, 
            completion: @escaping (Result<SimpleNotificationModel.UntagResourceResponseForUntagResource, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponseForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    func untagResourceSync(
            input: SimpleNotificationModel.UntagResourceRequest) throws -> SimpleNotificationModel.UntagResourceResponseForUntagResource

    /**
     Invokes the VerifySMSSandboxPhoneNumber operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated VerifySMSSandboxPhoneNumberInput object being passed to this operation.
         - completion: The VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber object or an error will be passed to this 
           callback when the operation is complete. The VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, resourceNotFound, throttled, verification.
     */
    func verifySMSSandboxPhoneNumberAsync(
            input: SimpleNotificationModel.VerifySMSSandboxPhoneNumberInput, 
            completion: @escaping (Result<SimpleNotificationModel.VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber, SimpleNotificationError>) -> ()) throws

    /**
     Invokes the VerifySMSSandboxPhoneNumber operation waiting for the response before returning.

     - Parameters:
         - input: The validated VerifySMSSandboxPhoneNumberInput object being passed to this operation.
     - Returns: The VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, resourceNotFound, throttled, verification.
     */
    func verifySMSSandboxPhoneNumberSync(
            input: SimpleNotificationModel.VerifySMSSandboxPhoneNumberInput) throws -> SimpleNotificationModel.VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber
}
