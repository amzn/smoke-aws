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
            _ input: SimpleNotificationModel.AddPermissionInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias AddPermissionAsyncType = (
            _ input: SimpleNotificationModel.AddPermissionInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias CheckIfPhoneNumberIsOptedOutSyncType = (
            _ input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut
    typealias CheckIfPhoneNumberIsOptedOutAsyncType = (
            _ input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut, HTTPClientError>) -> ()) throws -> ()
    typealias ConfirmSubscriptionSyncType = (
            _ input: SimpleNotificationModel.ConfirmSubscriptionInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription
    typealias ConfirmSubscriptionAsyncType = (
            _ input: SimpleNotificationModel.ConfirmSubscriptionInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription, HTTPClientError>) -> ()) throws -> ()
    typealias CreatePlatformApplicationSyncType = (
            _ input: SimpleNotificationModel.CreatePlatformApplicationInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication
    typealias CreatePlatformApplicationAsyncType = (
            _ input: SimpleNotificationModel.CreatePlatformApplicationInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication, HTTPClientError>) -> ()) throws -> ()
    typealias CreatePlatformEndpointSyncType = (
            _ input: SimpleNotificationModel.CreatePlatformEndpointInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint
    typealias CreatePlatformEndpointAsyncType = (
            _ input: SimpleNotificationModel.CreatePlatformEndpointInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint, HTTPClientError>) -> ()) throws -> ()
    typealias CreateTopicSyncType = (
            _ input: SimpleNotificationModel.CreateTopicInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.CreateTopicResponseForCreateTopic
    typealias CreateTopicAsyncType = (
            _ input: SimpleNotificationModel.CreateTopicInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.CreateTopicResponseForCreateTopic, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteEndpointSyncType = (
            _ input: SimpleNotificationModel.DeleteEndpointInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias DeleteEndpointAsyncType = (
            _ input: SimpleNotificationModel.DeleteEndpointInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeletePlatformApplicationSyncType = (
            _ input: SimpleNotificationModel.DeletePlatformApplicationInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias DeletePlatformApplicationAsyncType = (
            _ input: SimpleNotificationModel.DeletePlatformApplicationInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteTopicSyncType = (
            _ input: SimpleNotificationModel.DeleteTopicInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias DeleteTopicAsyncType = (
            _ input: SimpleNotificationModel.DeleteTopicInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias GetEndpointAttributesSyncType = (
            _ input: SimpleNotificationModel.GetEndpointAttributesInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes
    typealias GetEndpointAttributesAsyncType = (
            _ input: SimpleNotificationModel.GetEndpointAttributesInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes, HTTPClientError>) -> ()) throws -> ()
    typealias GetPlatformApplicationAttributesSyncType = (
            _ input: SimpleNotificationModel.GetPlatformApplicationAttributesInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes
    typealias GetPlatformApplicationAttributesAsyncType = (
            _ input: SimpleNotificationModel.GetPlatformApplicationAttributesInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes, HTTPClientError>) -> ()) throws -> ()
    typealias GetSMSAttributesSyncType = (
            _ input: SimpleNotificationModel.GetSMSAttributesInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes
    typealias GetSMSAttributesAsyncType = (
            _ input: SimpleNotificationModel.GetSMSAttributesInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes, HTTPClientError>) -> ()) throws -> ()
    typealias GetSubscriptionAttributesSyncType = (
            _ input: SimpleNotificationModel.GetSubscriptionAttributesInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes
    typealias GetSubscriptionAttributesAsyncType = (
            _ input: SimpleNotificationModel.GetSubscriptionAttributesInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes, HTTPClientError>) -> ()) throws -> ()
    typealias GetTopicAttributesSyncType = (
            _ input: SimpleNotificationModel.GetTopicAttributesInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes
    typealias GetTopicAttributesAsyncType = (
            _ input: SimpleNotificationModel.GetTopicAttributesInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes, HTTPClientError>) -> ()) throws -> ()
    typealias ListEndpointsByPlatformApplicationSyncType = (
            _ input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication
    typealias ListEndpointsByPlatformApplicationAsyncType = (
            _ input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication, HTTPClientError>) -> ()) throws -> ()
    typealias ListPhoneNumbersOptedOutSyncType = (
            _ input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut
    typealias ListPhoneNumbersOptedOutAsyncType = (
            _ input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut, HTTPClientError>) -> ()) throws -> ()
    typealias ListPlatformApplicationsSyncType = (
            _ input: SimpleNotificationModel.ListPlatformApplicationsInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications
    typealias ListPlatformApplicationsAsyncType = (
            _ input: SimpleNotificationModel.ListPlatformApplicationsInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications, HTTPClientError>) -> ()) throws -> ()
    typealias ListSubscriptionsSyncType = (
            _ input: SimpleNotificationModel.ListSubscriptionsInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions
    typealias ListSubscriptionsAsyncType = (
            _ input: SimpleNotificationModel.ListSubscriptionsInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions, HTTPClientError>) -> ()) throws -> ()
    typealias ListSubscriptionsByTopicSyncType = (
            _ input: SimpleNotificationModel.ListSubscriptionsByTopicInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic
    typealias ListSubscriptionsByTopicAsyncType = (
            _ input: SimpleNotificationModel.ListSubscriptionsByTopicInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic, HTTPClientError>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType = (
            _ input: SimpleNotificationModel.ListTagsForResourceRequest,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource
    typealias ListTagsForResourceAsyncType = (
            _ input: SimpleNotificationModel.ListTagsForResourceRequest, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource, HTTPClientError>) -> ()) throws -> ()
    typealias ListTopicsSyncType = (
            _ input: SimpleNotificationModel.ListTopicsInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.ListTopicsResponseForListTopics
    typealias ListTopicsAsyncType = (
            _ input: SimpleNotificationModel.ListTopicsInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.ListTopicsResponseForListTopics, HTTPClientError>) -> ()) throws -> ()
    typealias OptInPhoneNumberSyncType = (
            _ input: SimpleNotificationModel.OptInPhoneNumberInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber
    typealias OptInPhoneNumberAsyncType = (
            _ input: SimpleNotificationModel.OptInPhoneNumberInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber, HTTPClientError>) -> ()) throws -> ()
    typealias PublishSyncType = (
            _ input: SimpleNotificationModel.PublishInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.PublishResponseForPublish
    typealias PublishAsyncType = (
            _ input: SimpleNotificationModel.PublishInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.PublishResponseForPublish, HTTPClientError>) -> ()) throws -> ()
    typealias RemovePermissionSyncType = (
            _ input: SimpleNotificationModel.RemovePermissionInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias RemovePermissionAsyncType = (
            _ input: SimpleNotificationModel.RemovePermissionInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SetEndpointAttributesSyncType = (
            _ input: SimpleNotificationModel.SetEndpointAttributesInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias SetEndpointAttributesAsyncType = (
            _ input: SimpleNotificationModel.SetEndpointAttributesInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SetPlatformApplicationAttributesSyncType = (
            _ input: SimpleNotificationModel.SetPlatformApplicationAttributesInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias SetPlatformApplicationAttributesAsyncType = (
            _ input: SimpleNotificationModel.SetPlatformApplicationAttributesInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SetSMSAttributesSyncType = (
            _ input: SimpleNotificationModel.SetSMSAttributesInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes
    typealias SetSMSAttributesAsyncType = (
            _ input: SimpleNotificationModel.SetSMSAttributesInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes, HTTPClientError>) -> ()) throws -> ()
    typealias SetSubscriptionAttributesSyncType = (
            _ input: SimpleNotificationModel.SetSubscriptionAttributesInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias SetSubscriptionAttributesAsyncType = (
            _ input: SimpleNotificationModel.SetSubscriptionAttributesInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SetTopicAttributesSyncType = (
            _ input: SimpleNotificationModel.SetTopicAttributesInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias SetTopicAttributesAsyncType = (
            _ input: SimpleNotificationModel.SetTopicAttributesInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SubscribeSyncType = (
            _ input: SimpleNotificationModel.SubscribeInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.SubscribeResponseForSubscribe
    typealias SubscribeAsyncType = (
            _ input: SimpleNotificationModel.SubscribeInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.SubscribeResponseForSubscribe, HTTPClientError>) -> ()) throws -> ()
    typealias TagResourceSyncType = (
            _ input: SimpleNotificationModel.TagResourceRequest,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.TagResourceResponseForTagResource
    typealias TagResourceAsyncType = (
            _ input: SimpleNotificationModel.TagResourceRequest, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.TagResourceResponseForTagResource, HTTPClientError>) -> ()) throws -> ()
    typealias UnsubscribeSyncType = (
            _ input: SimpleNotificationModel.UnsubscribeInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias UnsubscribeAsyncType = (
            _ input: SimpleNotificationModel.UnsubscribeInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias UntagResourceSyncType = (
            _ input: SimpleNotificationModel.UntagResourceRequest,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.UntagResourceResponseForUntagResource
    typealias UntagResourceAsyncType = (
            _ input: SimpleNotificationModel.UntagResourceRequest, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleNotificationModel.UntagResourceResponseForUntagResource, HTTPClientError>) -> ()) throws -> ()

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AddPermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func addPermissionSync(
            input: SimpleNotificationModel.AddPermissionInput,
            reporting: SmokeAWSInvocationReporting) throws

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut, HTTPClientError>) -> ()) throws

    /**
     Invokes the CheckIfPhoneNumberIsOptedOut operation waiting for the response before returning.

     - Parameters:
         - input: The validated CheckIfPhoneNumberIsOptedOutInput object being passed to this operation.
     - Returns: The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func checkIfPhoneNumberIsOptedOutSync(
            input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription, HTTPClientError>) -> ()) throws

    /**
     Invokes the ConfirmSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated ConfirmSubscriptionInput object being passed to this operation.
     - Returns: The ConfirmSubscriptionResponseForConfirmSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, subscriptionLimitExceeded.
     */
    func confirmSubscriptionSync(
            input: SimpleNotificationModel.ConfirmSubscriptionInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreatePlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlatformApplicationInput object being passed to this operation.
     - Returns: The CreatePlatformApplicationResponseForCreatePlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func createPlatformApplicationSync(
            input: SimpleNotificationModel.CreatePlatformApplicationInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreatePlatformEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlatformEndpointInput object being passed to this operation.
     - Returns: The CreateEndpointResponseForCreatePlatformEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func createPlatformEndpointSync(
            input: SimpleNotificationModel.CreatePlatformEndpointInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.CreateTopicResponseForCreateTopic, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTopicInput object being passed to this operation.
     - Returns: The CreateTopicResponseForCreateTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, invalidSecurity, staleTag, tagLimitExceeded, tagPolicy, topicLimitExceeded.
     */
    func createTopicSync(
            input: SimpleNotificationModel.CreateTopicInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.CreateTopicResponseForCreateTopic

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func deleteEndpointSync(
            input: SimpleNotificationModel.DeleteEndpointInput,
            reporting: SmokeAWSInvocationReporting) throws

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeletePlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func deletePlatformApplicationSync(
            input: SimpleNotificationModel.DeletePlatformApplicationInput,
            reporting: SmokeAWSInvocationReporting) throws

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, notFound, staleTag, tagPolicy.
     */
    func deleteTopicSync(
            input: SimpleNotificationModel.DeleteTopicInput,
            reporting: SmokeAWSInvocationReporting) throws

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetEndpointAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetEndpointAttributesInput object being passed to this operation.
     - Returns: The GetEndpointAttributesResponseForGetEndpointAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func getEndpointAttributesSync(
            input: SimpleNotificationModel.GetEndpointAttributesInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetPlatformApplicationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPlatformApplicationAttributesInput object being passed to this operation.
     - Returns: The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func getPlatformApplicationAttributesSync(
            input: SimpleNotificationModel.GetPlatformApplicationAttributesInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetSMSAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSMSAttributesInput object being passed to this operation.
     - Returns: The GetSMSAttributesResponseForGetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func getSMSAttributesSync(
            input: SimpleNotificationModel.GetSMSAttributesInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetSubscriptionAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSubscriptionAttributesInput object being passed to this operation.
     - Returns: The GetSubscriptionAttributesResponseForGetSubscriptionAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func getSubscriptionAttributesSync(
            input: SimpleNotificationModel.GetSubscriptionAttributesInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetTopicAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTopicAttributesInput object being passed to this operation.
     - Returns: The GetTopicAttributesResponseForGetTopicAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func getTopicAttributesSync(
            input: SimpleNotificationModel.GetTopicAttributesInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListEndpointsByPlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListEndpointsByPlatformApplicationInput object being passed to this operation.
     - Returns: The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func listEndpointsByPlatformApplicationSync(
            input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListPhoneNumbersOptedOut operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPhoneNumbersOptedOutInput object being passed to this operation.
     - Returns: The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func listPhoneNumbersOptedOutSync(
            input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListPlatformApplications operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPlatformApplicationsInput object being passed to this operation.
     - Returns: The ListPlatformApplicationsResponseForListPlatformApplications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func listPlatformApplicationsSync(
            input: SimpleNotificationModel.ListPlatformApplicationsInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListSubscriptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSubscriptionsInput object being passed to this operation.
     - Returns: The ListSubscriptionsResponseForListSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func listSubscriptionsSync(
            input: SimpleNotificationModel.ListSubscriptionsInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListSubscriptionsByTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSubscriptionsByTopicInput object being passed to this operation.
     - Returns: The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func listSubscriptionsByTopicSync(
            input: SimpleNotificationModel.ListSubscriptionsByTopicInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponseForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, tagPolicy.
     */
    func listTagsForResourceSync(
            input: SimpleNotificationModel.ListTagsForResourceRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.ListTopicsResponseForListTopics, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListTopics operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTopicsInput object being passed to this operation.
     - Returns: The ListTopicsResponseForListTopics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func listTopicsSync(
            input: SimpleNotificationModel.ListTopicsInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.ListTopicsResponseForListTopics

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber, HTTPClientError>) -> ()) throws

    /**
     Invokes the OptInPhoneNumber operation waiting for the response before returning.

     - Parameters:
         - input: The validated OptInPhoneNumberInput object being passed to this operation.
     - Returns: The OptInPhoneNumberResponseForOptInPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func optInPhoneNumberSync(
            input: SimpleNotificationModel.OptInPhoneNumberInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.PublishResponseForPublish, HTTPClientError>) -> ()) throws

    /**
     Invokes the Publish operation waiting for the response before returning.

     - Parameters:
         - input: The validated PublishInput object being passed to this operation.
     - Returns: The PublishResponseForPublish object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, endpointDisabled, internalError, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled.
     */
    func publishSync(
            input: SimpleNotificationModel.PublishInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.PublishResponseForPublish

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RemovePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func removePermissionSync(
            input: SimpleNotificationModel.RemovePermissionInput,
            reporting: SmokeAWSInvocationReporting) throws

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SetEndpointAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func setEndpointAttributesSync(
            input: SimpleNotificationModel.SetEndpointAttributesInput,
            reporting: SmokeAWSInvocationReporting) throws

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SetPlatformApplicationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func setPlatformApplicationAttributesSync(
            input: SimpleNotificationModel.SetPlatformApplicationAttributesInput,
            reporting: SmokeAWSInvocationReporting) throws

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes, HTTPClientError>) -> ()) throws

    /**
     Invokes the SetSMSAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetSMSAttributesInput object being passed to this operation.
     - Returns: The SetSMSAttributesResponseForSetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func setSMSAttributesSync(
            input: SimpleNotificationModel.SetSMSAttributesInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SetSubscriptionAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound.
     */
    func setSubscriptionAttributesSync(
            input: SimpleNotificationModel.SetSubscriptionAttributesInput,
            reporting: SmokeAWSInvocationReporting) throws

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SetTopicAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func setTopicAttributesSync(
            input: SimpleNotificationModel.SetTopicAttributesInput,
            reporting: SmokeAWSInvocationReporting) throws

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.SubscribeResponseForSubscribe, HTTPClientError>) -> ()) throws

    /**
     Invokes the Subscribe operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubscribeInput object being passed to this operation.
     - Returns: The SubscribeResponseForSubscribe object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, invalidSecurity, notFound, subscriptionLimitExceeded.
     */
    func subscribeSync(
            input: SimpleNotificationModel.SubscribeInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.SubscribeResponseForSubscribe

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.TagResourceResponseForTagResource, HTTPClientError>) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponseForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    func tagResourceSync(
            input: SimpleNotificationModel.TagResourceRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.TagResourceResponseForTagResource

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the Unsubscribe operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func unsubscribeSync(
            input: SimpleNotificationModel.UnsubscribeInput,
            reporting: SmokeAWSInvocationReporting) throws

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleNotificationModel.UntagResourceResponseForUntagResource, HTTPClientError>) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponseForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    func untagResourceSync(
            input: SimpleNotificationModel.UntagResourceRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleNotificationModel.UntagResourceResponseForUntagResource
}
