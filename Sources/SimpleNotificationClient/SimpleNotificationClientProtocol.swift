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
    typealias AddPermissionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.AddPermissionInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias AddPermissionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.AddPermissionInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias CheckIfPhoneNumberIsOptedOutSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut
    typealias CheckIfPhoneNumberIsOptedOutAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut, HTTPClientError>) -> ()) throws -> ()
    typealias ConfirmSubscriptionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.ConfirmSubscriptionInput,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription
    typealias ConfirmSubscriptionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.ConfirmSubscriptionInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription, HTTPClientError>) -> ()) throws -> ()
    typealias CreatePlatformApplicationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.CreatePlatformApplicationInput,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication
    typealias CreatePlatformApplicationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.CreatePlatformApplicationInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication, HTTPClientError>) -> ()) throws -> ()
    typealias CreatePlatformEndpointSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.CreatePlatformEndpointInput,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint
    typealias CreatePlatformEndpointAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.CreatePlatformEndpointInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint, HTTPClientError>) -> ()) throws -> ()
    typealias CreateTopicSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.CreateTopicInput,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.CreateTopicResponseForCreateTopic
    typealias CreateTopicAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.CreateTopicInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.CreateTopicResponseForCreateTopic, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteEndpointSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.DeleteEndpointInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteEndpointAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.DeleteEndpointInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeletePlatformApplicationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.DeletePlatformApplicationInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeletePlatformApplicationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.DeletePlatformApplicationInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteTopicSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.DeleteTopicInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteTopicAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.DeleteTopicInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias GetEndpointAttributesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.GetEndpointAttributesInput,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes
    typealias GetEndpointAttributesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.GetEndpointAttributesInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes, HTTPClientError>) -> ()) throws -> ()
    typealias GetPlatformApplicationAttributesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.GetPlatformApplicationAttributesInput,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes
    typealias GetPlatformApplicationAttributesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.GetPlatformApplicationAttributesInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes, HTTPClientError>) -> ()) throws -> ()
    typealias GetSMSAttributesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.GetSMSAttributesInput,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes
    typealias GetSMSAttributesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.GetSMSAttributesInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes, HTTPClientError>) -> ()) throws -> ()
    typealias GetSubscriptionAttributesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.GetSubscriptionAttributesInput,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes
    typealias GetSubscriptionAttributesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.GetSubscriptionAttributesInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes, HTTPClientError>) -> ()) throws -> ()
    typealias GetTopicAttributesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.GetTopicAttributesInput,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes
    typealias GetTopicAttributesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.GetTopicAttributesInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes, HTTPClientError>) -> ()) throws -> ()
    typealias ListEndpointsByPlatformApplicationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication
    typealias ListEndpointsByPlatformApplicationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication, HTTPClientError>) -> ()) throws -> ()
    typealias ListPhoneNumbersOptedOutSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut
    typealias ListPhoneNumbersOptedOutAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut, HTTPClientError>) -> ()) throws -> ()
    typealias ListPlatformApplicationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.ListPlatformApplicationsInput,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications
    typealias ListPlatformApplicationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.ListPlatformApplicationsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications, HTTPClientError>) -> ()) throws -> ()
    typealias ListSubscriptionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.ListSubscriptionsInput,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions
    typealias ListSubscriptionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.ListSubscriptionsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions, HTTPClientError>) -> ()) throws -> ()
    typealias ListSubscriptionsByTopicSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.ListSubscriptionsByTopicInput,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic
    typealias ListSubscriptionsByTopicAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.ListSubscriptionsByTopicInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic, HTTPClientError>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.ListTagsForResourceRequest,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource
    typealias ListTagsForResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.ListTagsForResourceRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource, HTTPClientError>) -> ()) throws -> ()
    typealias ListTopicsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.ListTopicsInput,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListTopicsResponseForListTopics
    typealias ListTopicsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.ListTopicsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.ListTopicsResponseForListTopics, HTTPClientError>) -> ()) throws -> ()
    typealias OptInPhoneNumberSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.OptInPhoneNumberInput,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber
    typealias OptInPhoneNumberAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.OptInPhoneNumberInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber, HTTPClientError>) -> ()) throws -> ()
    typealias PublishSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.PublishInput,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.PublishResponseForPublish
    typealias PublishAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.PublishInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.PublishResponseForPublish, HTTPClientError>) -> ()) throws -> ()
    typealias RemovePermissionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.RemovePermissionInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias RemovePermissionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.RemovePermissionInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SetEndpointAttributesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.SetEndpointAttributesInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias SetEndpointAttributesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.SetEndpointAttributesInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SetPlatformApplicationAttributesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.SetPlatformApplicationAttributesInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias SetPlatformApplicationAttributesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.SetPlatformApplicationAttributesInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SetSMSAttributesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.SetSMSAttributesInput,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes
    typealias SetSMSAttributesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.SetSMSAttributesInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes, HTTPClientError>) -> ()) throws -> ()
    typealias SetSubscriptionAttributesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.SetSubscriptionAttributesInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias SetSubscriptionAttributesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.SetSubscriptionAttributesInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SetTopicAttributesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.SetTopicAttributesInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias SetTopicAttributesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.SetTopicAttributesInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SubscribeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.SubscribeInput,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.SubscribeResponseForSubscribe
    typealias SubscribeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.SubscribeInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.SubscribeResponseForSubscribe, HTTPClientError>) -> ()) throws -> ()
    typealias TagResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.TagResourceRequest,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.TagResourceResponseForTagResource
    typealias TagResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.TagResourceRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.TagResourceResponseForTagResource, HTTPClientError>) -> ()) throws -> ()
    typealias UnsubscribeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.UnsubscribeInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias UnsubscribeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.UnsubscribeInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias UntagResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.UntagResourceRequest,
            _ reporting: InvocationReportingType) throws -> SimpleNotificationModel.UntagResourceResponseForUntagResource
    typealias UntagResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleNotificationModel.UntagResourceRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleNotificationModel.UntagResourceResponseForUntagResource, HTTPClientError>) -> ()) throws -> ()

    /**
     Invokes the AddPermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func addPermissionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.AddPermissionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AddPermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func addPermissionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.AddPermissionInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the CheckIfPhoneNumberIsOptedOut operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CheckIfPhoneNumberIsOptedOutInput object being passed to this operation.
         - completion: The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut object or an error will be passed to this 
           callback when the operation is complete. The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    func checkIfPhoneNumberIsOptedOutAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut, HTTPClientError>) -> ()) throws

    /**
     Invokes the CheckIfPhoneNumberIsOptedOut operation waiting for the response before returning.

     - Parameters:
         - input: The validated CheckIfPhoneNumberIsOptedOutInput object being passed to this operation.
     - Returns: The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func checkIfPhoneNumberIsOptedOutSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut

    /**
     Invokes the ConfirmSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ConfirmSubscriptionInput object being passed to this operation.
         - completion: The ConfirmSubscriptionResponseForConfirmSubscription object or an error will be passed to this 
           callback when the operation is complete. The ConfirmSubscriptionResponseForConfirmSubscription
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, subscriptionLimitExceeded.
     */
    func confirmSubscriptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ConfirmSubscriptionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription, HTTPClientError>) -> ()) throws

    /**
     Invokes the ConfirmSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated ConfirmSubscriptionInput object being passed to this operation.
     - Returns: The ConfirmSubscriptionResponseForConfirmSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, subscriptionLimitExceeded.
     */
    func confirmSubscriptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ConfirmSubscriptionInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription

    /**
     Invokes the CreatePlatformApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePlatformApplicationInput object being passed to this operation.
         - completion: The CreatePlatformApplicationResponseForCreatePlatformApplication object or an error will be passed to this 
           callback when the operation is complete. The CreatePlatformApplicationResponseForCreatePlatformApplication
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func createPlatformApplicationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.CreatePlatformApplicationInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreatePlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlatformApplicationInput object being passed to this operation.
     - Returns: The CreatePlatformApplicationResponseForCreatePlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func createPlatformApplicationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.CreatePlatformApplicationInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication

    /**
     Invokes the CreatePlatformEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePlatformEndpointInput object being passed to this operation.
         - completion: The CreateEndpointResponseForCreatePlatformEndpoint object or an error will be passed to this 
           callback when the operation is complete. The CreateEndpointResponseForCreatePlatformEndpoint
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func createPlatformEndpointAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.CreatePlatformEndpointInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreatePlatformEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlatformEndpointInput object being passed to this operation.
     - Returns: The CreateEndpointResponseForCreatePlatformEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func createPlatformEndpointSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.CreatePlatformEndpointInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint

    /**
     Invokes the CreateTopic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTopicInput object being passed to this operation.
         - completion: The CreateTopicResponseForCreateTopic object or an error will be passed to this 
           callback when the operation is complete. The CreateTopicResponseForCreateTopic
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, internalError, invalidParameter, invalidSecurity, staleTag, tagLimitExceeded, tagPolicy, topicLimitExceeded.
     */
    func createTopicAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.CreateTopicInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.CreateTopicResponseForCreateTopic, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTopicInput object being passed to this operation.
     - Returns: The CreateTopicResponseForCreateTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, invalidSecurity, staleTag, tagLimitExceeded, tagPolicy, topicLimitExceeded.
     */
    func createTopicSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.CreateTopicInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.CreateTopicResponseForCreateTopic

    /**
     Invokes the DeleteEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func deleteEndpointAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.DeleteEndpointInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func deleteEndpointSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.DeleteEndpointInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeletePlatformApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func deletePlatformApplicationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.DeletePlatformApplicationInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeletePlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func deletePlatformApplicationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.DeletePlatformApplicationInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteTopic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, concurrentAccess, internalError, invalidParameter, notFound, staleTag, tagPolicy.
     */
    func deleteTopicAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.DeleteTopicInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, notFound, staleTag, tagPolicy.
     */
    func deleteTopicSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.DeleteTopicInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the GetEndpointAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetEndpointAttributesInput object being passed to this operation.
         - completion: The GetEndpointAttributesResponseForGetEndpointAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetEndpointAttributesResponseForGetEndpointAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func getEndpointAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.GetEndpointAttributesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetEndpointAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetEndpointAttributesInput object being passed to this operation.
     - Returns: The GetEndpointAttributesResponseForGetEndpointAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func getEndpointAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.GetEndpointAttributesInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes

    /**
     Invokes the GetPlatformApplicationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPlatformApplicationAttributesInput object being passed to this operation.
         - completion: The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func getPlatformApplicationAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.GetPlatformApplicationAttributesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetPlatformApplicationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPlatformApplicationAttributesInput object being passed to this operation.
     - Returns: The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func getPlatformApplicationAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.GetPlatformApplicationAttributesInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes

    /**
     Invokes the GetSMSAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetSMSAttributesInput object being passed to this operation.
         - completion: The GetSMSAttributesResponseForGetSMSAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetSMSAttributesResponseForGetSMSAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    func getSMSAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.GetSMSAttributesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetSMSAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSMSAttributesInput object being passed to this operation.
     - Returns: The GetSMSAttributesResponseForGetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func getSMSAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.GetSMSAttributesInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes

    /**
     Invokes the GetSubscriptionAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetSubscriptionAttributesInput object being passed to this operation.
         - completion: The GetSubscriptionAttributesResponseForGetSubscriptionAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetSubscriptionAttributesResponseForGetSubscriptionAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func getSubscriptionAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.GetSubscriptionAttributesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetSubscriptionAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSubscriptionAttributesInput object being passed to this operation.
     - Returns: The GetSubscriptionAttributesResponseForGetSubscriptionAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func getSubscriptionAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.GetSubscriptionAttributesInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes

    /**
     Invokes the GetTopicAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTopicAttributesInput object being passed to this operation.
         - completion: The GetTopicAttributesResponseForGetTopicAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetTopicAttributesResponseForGetTopicAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func getTopicAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.GetTopicAttributesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetTopicAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTopicAttributesInput object being passed to this operation.
     - Returns: The GetTopicAttributesResponseForGetTopicAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func getTopicAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.GetTopicAttributesInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes

    /**
     Invokes the ListEndpointsByPlatformApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListEndpointsByPlatformApplicationInput object being passed to this operation.
         - completion: The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication object or an error will be passed to this 
           callback when the operation is complete. The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func listEndpointsByPlatformApplicationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListEndpointsByPlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListEndpointsByPlatformApplicationInput object being passed to this operation.
     - Returns: The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func listEndpointsByPlatformApplicationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication

    /**
     Invokes the ListPhoneNumbersOptedOut operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPhoneNumbersOptedOutInput object being passed to this operation.
         - completion: The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut object or an error will be passed to this 
           callback when the operation is complete. The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    func listPhoneNumbersOptedOutAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListPhoneNumbersOptedOut operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPhoneNumbersOptedOutInput object being passed to this operation.
     - Returns: The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func listPhoneNumbersOptedOutSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut

    /**
     Invokes the ListPlatformApplications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPlatformApplicationsInput object being passed to this operation.
         - completion: The ListPlatformApplicationsResponseForListPlatformApplications object or an error will be passed to this 
           callback when the operation is complete. The ListPlatformApplicationsResponseForListPlatformApplications
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func listPlatformApplicationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListPlatformApplicationsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListPlatformApplications operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPlatformApplicationsInput object being passed to this operation.
     - Returns: The ListPlatformApplicationsResponseForListPlatformApplications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func listPlatformApplicationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListPlatformApplicationsInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications

    /**
     Invokes the ListSubscriptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSubscriptionsInput object being passed to this operation.
         - completion: The ListSubscriptionsResponseForListSubscriptions object or an error will be passed to this 
           callback when the operation is complete. The ListSubscriptionsResponseForListSubscriptions
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func listSubscriptionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListSubscriptionsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListSubscriptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSubscriptionsInput object being passed to this operation.
     - Returns: The ListSubscriptionsResponseForListSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func listSubscriptionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListSubscriptionsInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions

    /**
     Invokes the ListSubscriptionsByTopic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSubscriptionsByTopicInput object being passed to this operation.
         - completion: The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic object or an error will be passed to this 
           callback when the operation is complete. The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func listSubscriptionsByTopicAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListSubscriptionsByTopicInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListSubscriptionsByTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSubscriptionsByTopicInput object being passed to this operation.
     - Returns: The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func listSubscriptionsByTopicSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListSubscriptionsByTopicInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
         - completion: The ListTagsForResourceResponseForListTagsForResource object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceResponseForListTagsForResource
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, tagPolicy.
     */
    func listTagsForResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListTagsForResourceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponseForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, tagPolicy.
     */
    func listTagsForResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListTagsForResourceRequest,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource

    /**
     Invokes the ListTopics operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTopicsInput object being passed to this operation.
         - completion: The ListTopicsResponseForListTopics object or an error will be passed to this 
           callback when the operation is complete. The ListTopicsResponseForListTopics
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func listTopicsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListTopicsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.ListTopicsResponseForListTopics, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListTopics operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTopicsInput object being passed to this operation.
     - Returns: The ListTopicsResponseForListTopics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func listTopicsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.ListTopicsInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.ListTopicsResponseForListTopics

    /**
     Invokes the OptInPhoneNumber operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated OptInPhoneNumberInput object being passed to this operation.
         - completion: The OptInPhoneNumberResponseForOptInPhoneNumber object or an error will be passed to this 
           callback when the operation is complete. The OptInPhoneNumberResponseForOptInPhoneNumber
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    func optInPhoneNumberAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.OptInPhoneNumberInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber, HTTPClientError>) -> ()) throws

    /**
     Invokes the OptInPhoneNumber operation waiting for the response before returning.

     - Parameters:
         - input: The validated OptInPhoneNumberInput object being passed to this operation.
     - Returns: The OptInPhoneNumberResponseForOptInPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func optInPhoneNumberSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.OptInPhoneNumberInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber

    /**
     Invokes the Publish operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PublishInput object being passed to this operation.
         - completion: The PublishResponseForPublish object or an error will be passed to this 
           callback when the operation is complete. The PublishResponseForPublish
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, endpointDisabled, internalError, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled.
     */
    func publishAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.PublishInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.PublishResponseForPublish, HTTPClientError>) -> ()) throws

    /**
     Invokes the Publish operation waiting for the response before returning.

     - Parameters:
         - input: The validated PublishInput object being passed to this operation.
     - Returns: The PublishResponseForPublish object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, endpointDisabled, internalError, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled.
     */
    func publishSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.PublishInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.PublishResponseForPublish

    /**
     Invokes the RemovePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func removePermissionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.RemovePermissionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RemovePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func removePermissionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.RemovePermissionInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the SetEndpointAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func setEndpointAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SetEndpointAttributesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SetEndpointAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func setEndpointAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SetEndpointAttributesInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the SetPlatformApplicationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func setPlatformApplicationAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SetPlatformApplicationAttributesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SetPlatformApplicationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func setPlatformApplicationAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SetPlatformApplicationAttributesInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the SetSMSAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetSMSAttributesInput object being passed to this operation.
         - completion: The SetSMSAttributesResponseForSetSMSAttributes object or an error will be passed to this 
           callback when the operation is complete. The SetSMSAttributesResponseForSetSMSAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    func setSMSAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SetSMSAttributesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes, HTTPClientError>) -> ()) throws

    /**
     Invokes the SetSMSAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetSMSAttributesInput object being passed to this operation.
     - Returns: The SetSMSAttributesResponseForSetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func setSMSAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SetSMSAttributesInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes

    /**
     Invokes the SetSubscriptionAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound.
     */
    func setSubscriptionAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SetSubscriptionAttributesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SetSubscriptionAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound.
     */
    func setSubscriptionAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SetSubscriptionAttributesInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the SetTopicAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func setTopicAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SetTopicAttributesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SetTopicAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func setTopicAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SetTopicAttributesInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the Subscribe operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubscribeInput object being passed to this operation.
         - completion: The SubscribeResponseForSubscribe object or an error will be passed to this 
           callback when the operation is complete. The SubscribeResponseForSubscribe
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, invalidSecurity, notFound, subscriptionLimitExceeded.
     */
    func subscribeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SubscribeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.SubscribeResponseForSubscribe, HTTPClientError>) -> ()) throws

    /**
     Invokes the Subscribe operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubscribeInput object being passed to this operation.
     - Returns: The SubscribeResponseForSubscribe object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, invalidSecurity, notFound, subscriptionLimitExceeded.
     */
    func subscribeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.SubscribeInput,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.SubscribeResponseForSubscribe

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
         - completion: The TagResourceResponseForTagResource object or an error will be passed to this 
           callback when the operation is complete. The TagResourceResponseForTagResource
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    func tagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.TagResourceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.TagResourceResponseForTagResource, HTTPClientError>) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponseForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    func tagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.TagResourceRequest,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.TagResourceResponseForTagResource

    /**
     Invokes the Unsubscribe operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func unsubscribeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.UnsubscribeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the Unsubscribe operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func unsubscribeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.UnsubscribeInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
         - completion: The UntagResourceResponseForUntagResource object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceResponseForUntagResource
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    func untagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.UntagResourceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleNotificationModel.UntagResourceResponseForUntagResource, HTTPClientError>) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponseForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    func untagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleNotificationModel.UntagResourceRequest,
            reporting: InvocationReportingType) throws -> SimpleNotificationModel.UntagResourceResponseForUntagResource
}
