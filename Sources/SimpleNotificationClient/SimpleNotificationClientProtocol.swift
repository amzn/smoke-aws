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
import SmokeHTTPClient

/**
 Client Protocol for the SimpleNotification service.
 */
public protocol SimpleNotificationClientProtocol {
    typealias AddPermissionSyncType = (_ input: SimpleNotificationModel.AddPermissionInput) throws -> ()
    typealias AddPermissionAsyncType = (_ input: SimpleNotificationModel.AddPermissionInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias CheckIfPhoneNumberIsOptedOutSyncType = (_ input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput) throws -> SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut
    typealias CheckIfPhoneNumberIsOptedOutAsyncType = (_ input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput, _ completion: @escaping (HTTPResult<SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut>) -> ()) throws -> ()
    typealias ConfirmSubscriptionSyncType = (_ input: SimpleNotificationModel.ConfirmSubscriptionInput) throws -> SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription
    typealias ConfirmSubscriptionAsyncType = (_ input: SimpleNotificationModel.ConfirmSubscriptionInput, _ completion: @escaping (HTTPResult<SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription>) -> ()) throws -> ()
    typealias CreatePlatformApplicationSyncType = (_ input: SimpleNotificationModel.CreatePlatformApplicationInput) throws -> SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication
    typealias CreatePlatformApplicationAsyncType = (_ input: SimpleNotificationModel.CreatePlatformApplicationInput, _ completion: @escaping (HTTPResult<SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication>) -> ()) throws -> ()
    typealias CreatePlatformEndpointSyncType = (_ input: SimpleNotificationModel.CreatePlatformEndpointInput) throws -> SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint
    typealias CreatePlatformEndpointAsyncType = (_ input: SimpleNotificationModel.CreatePlatformEndpointInput, _ completion: @escaping (HTTPResult<SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint>) -> ()) throws -> ()
    typealias CreateTopicSyncType = (_ input: SimpleNotificationModel.CreateTopicInput) throws -> SimpleNotificationModel.CreateTopicResponseForCreateTopic
    typealias CreateTopicAsyncType = (_ input: SimpleNotificationModel.CreateTopicInput, _ completion: @escaping (HTTPResult<SimpleNotificationModel.CreateTopicResponseForCreateTopic>) -> ()) throws -> ()
    typealias DeleteEndpointSyncType = (_ input: SimpleNotificationModel.DeleteEndpointInput) throws -> ()
    typealias DeleteEndpointAsyncType = (_ input: SimpleNotificationModel.DeleteEndpointInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeletePlatformApplicationSyncType = (_ input: SimpleNotificationModel.DeletePlatformApplicationInput) throws -> ()
    typealias DeletePlatformApplicationAsyncType = (_ input: SimpleNotificationModel.DeletePlatformApplicationInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteTopicSyncType = (_ input: SimpleNotificationModel.DeleteTopicInput) throws -> ()
    typealias DeleteTopicAsyncType = (_ input: SimpleNotificationModel.DeleteTopicInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias GetEndpointAttributesSyncType = (_ input: SimpleNotificationModel.GetEndpointAttributesInput) throws -> SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes
    typealias GetEndpointAttributesAsyncType = (_ input: SimpleNotificationModel.GetEndpointAttributesInput, _ completion: @escaping (HTTPResult<SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes>) -> ()) throws -> ()
    typealias GetPlatformApplicationAttributesSyncType = (_ input: SimpleNotificationModel.GetPlatformApplicationAttributesInput) throws -> SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes
    typealias GetPlatformApplicationAttributesAsyncType = (_ input: SimpleNotificationModel.GetPlatformApplicationAttributesInput, _ completion: @escaping (HTTPResult<SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes>) -> ()) throws -> ()
    typealias GetSMSAttributesSyncType = (_ input: SimpleNotificationModel.GetSMSAttributesInput) throws -> SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes
    typealias GetSMSAttributesAsyncType = (_ input: SimpleNotificationModel.GetSMSAttributesInput, _ completion: @escaping (HTTPResult<SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes>) -> ()) throws -> ()
    typealias GetSubscriptionAttributesSyncType = (_ input: SimpleNotificationModel.GetSubscriptionAttributesInput) throws -> SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes
    typealias GetSubscriptionAttributesAsyncType = (_ input: SimpleNotificationModel.GetSubscriptionAttributesInput, _ completion: @escaping (HTTPResult<SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes>) -> ()) throws -> ()
    typealias GetTopicAttributesSyncType = (_ input: SimpleNotificationModel.GetTopicAttributesInput) throws -> SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes
    typealias GetTopicAttributesAsyncType = (_ input: SimpleNotificationModel.GetTopicAttributesInput, _ completion: @escaping (HTTPResult<SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes>) -> ()) throws -> ()
    typealias ListEndpointsByPlatformApplicationSyncType = (_ input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput) throws -> SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication
    typealias ListEndpointsByPlatformApplicationAsyncType = (_ input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput, _ completion: @escaping (HTTPResult<SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication>) -> ()) throws -> ()
    typealias ListPhoneNumbersOptedOutSyncType = (_ input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput) throws -> SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut
    typealias ListPhoneNumbersOptedOutAsyncType = (_ input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput, _ completion: @escaping (HTTPResult<SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut>) -> ()) throws -> ()
    typealias ListPlatformApplicationsSyncType = (_ input: SimpleNotificationModel.ListPlatformApplicationsInput) throws -> SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications
    typealias ListPlatformApplicationsAsyncType = (_ input: SimpleNotificationModel.ListPlatformApplicationsInput, _ completion: @escaping (HTTPResult<SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications>) -> ()) throws -> ()
    typealias ListSubscriptionsSyncType = (_ input: SimpleNotificationModel.ListSubscriptionsInput) throws -> SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions
    typealias ListSubscriptionsAsyncType = (_ input: SimpleNotificationModel.ListSubscriptionsInput, _ completion: @escaping (HTTPResult<SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions>) -> ()) throws -> ()
    typealias ListSubscriptionsByTopicSyncType = (_ input: SimpleNotificationModel.ListSubscriptionsByTopicInput) throws -> SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic
    typealias ListSubscriptionsByTopicAsyncType = (_ input: SimpleNotificationModel.ListSubscriptionsByTopicInput, _ completion: @escaping (HTTPResult<SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType = (_ input: SimpleNotificationModel.ListTagsForResourceRequest) throws -> SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource
    typealias ListTagsForResourceAsyncType = (_ input: SimpleNotificationModel.ListTagsForResourceRequest, _ completion: @escaping (HTTPResult<SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource>) -> ()) throws -> ()
    typealias ListTopicsSyncType = (_ input: SimpleNotificationModel.ListTopicsInput) throws -> SimpleNotificationModel.ListTopicsResponseForListTopics
    typealias ListTopicsAsyncType = (_ input: SimpleNotificationModel.ListTopicsInput, _ completion: @escaping (HTTPResult<SimpleNotificationModel.ListTopicsResponseForListTopics>) -> ()) throws -> ()
    typealias OptInPhoneNumberSyncType = (_ input: SimpleNotificationModel.OptInPhoneNumberInput) throws -> SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber
    typealias OptInPhoneNumberAsyncType = (_ input: SimpleNotificationModel.OptInPhoneNumberInput, _ completion: @escaping (HTTPResult<SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber>) -> ()) throws -> ()
    typealias PublishSyncType = (_ input: SimpleNotificationModel.PublishInput) throws -> SimpleNotificationModel.PublishResponseForPublish
    typealias PublishAsyncType = (_ input: SimpleNotificationModel.PublishInput, _ completion: @escaping (HTTPResult<SimpleNotificationModel.PublishResponseForPublish>) -> ()) throws -> ()
    typealias RemovePermissionSyncType = (_ input: SimpleNotificationModel.RemovePermissionInput) throws -> ()
    typealias RemovePermissionAsyncType = (_ input: SimpleNotificationModel.RemovePermissionInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SetEndpointAttributesSyncType = (_ input: SimpleNotificationModel.SetEndpointAttributesInput) throws -> ()
    typealias SetEndpointAttributesAsyncType = (_ input: SimpleNotificationModel.SetEndpointAttributesInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SetPlatformApplicationAttributesSyncType = (_ input: SimpleNotificationModel.SetPlatformApplicationAttributesInput) throws -> ()
    typealias SetPlatformApplicationAttributesAsyncType = (_ input: SimpleNotificationModel.SetPlatformApplicationAttributesInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SetSMSAttributesSyncType = (_ input: SimpleNotificationModel.SetSMSAttributesInput) throws -> SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes
    typealias SetSMSAttributesAsyncType = (_ input: SimpleNotificationModel.SetSMSAttributesInput, _ completion: @escaping (HTTPResult<SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes>) -> ()) throws -> ()
    typealias SetSubscriptionAttributesSyncType = (_ input: SimpleNotificationModel.SetSubscriptionAttributesInput) throws -> ()
    typealias SetSubscriptionAttributesAsyncType = (_ input: SimpleNotificationModel.SetSubscriptionAttributesInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SetTopicAttributesSyncType = (_ input: SimpleNotificationModel.SetTopicAttributesInput) throws -> ()
    typealias SetTopicAttributesAsyncType = (_ input: SimpleNotificationModel.SetTopicAttributesInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SubscribeSyncType = (_ input: SimpleNotificationModel.SubscribeInput) throws -> SimpleNotificationModel.SubscribeResponseForSubscribe
    typealias SubscribeAsyncType = (_ input: SimpleNotificationModel.SubscribeInput, _ completion: @escaping (HTTPResult<SimpleNotificationModel.SubscribeResponseForSubscribe>) -> ()) throws -> ()
    typealias TagResourceSyncType = (_ input: SimpleNotificationModel.TagResourceRequest) throws -> SimpleNotificationModel.TagResourceResponseForTagResource
    typealias TagResourceAsyncType = (_ input: SimpleNotificationModel.TagResourceRequest, _ completion: @escaping (HTTPResult<SimpleNotificationModel.TagResourceResponseForTagResource>) -> ()) throws -> ()
    typealias UnsubscribeSyncType = (_ input: SimpleNotificationModel.UnsubscribeInput) throws -> ()
    typealias UnsubscribeAsyncType = (_ input: SimpleNotificationModel.UnsubscribeInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias UntagResourceSyncType = (_ input: SimpleNotificationModel.UntagResourceRequest) throws -> SimpleNotificationModel.UntagResourceResponseForUntagResource
    typealias UntagResourceAsyncType = (_ input: SimpleNotificationModel.UntagResourceRequest, _ completion: @escaping (HTTPResult<SimpleNotificationModel.UntagResourceResponseForUntagResource>) -> ()) throws -> ()

    /**
     Invokes the AddPermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func addPermissionAsync(input: SimpleNotificationModel.AddPermissionInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AddPermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func addPermissionSync(input: SimpleNotificationModel.AddPermissionInput) throws

    /**
     Invokes the CheckIfPhoneNumberIsOptedOut operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CheckIfPhoneNumberIsOptedOutInput object being passed to this operation.
         - completion: The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut object or an error will be passed to this 
           callback when the operation is complete. The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    func checkIfPhoneNumberIsOptedOutAsync(input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput, completion: @escaping (HTTPResult<SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut>) -> ()) throws

    /**
     Invokes the CheckIfPhoneNumberIsOptedOut operation waiting for the response before returning.

     - Parameters:
         - input: The validated CheckIfPhoneNumberIsOptedOutInput object being passed to this operation.
     - Returns: The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func checkIfPhoneNumberIsOptedOutSync(input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput) throws -> SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut

    /**
     Invokes the ConfirmSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ConfirmSubscriptionInput object being passed to this operation.
         - completion: The ConfirmSubscriptionResponseForConfirmSubscription object or an error will be passed to this 
           callback when the operation is complete. The ConfirmSubscriptionResponseForConfirmSubscription
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, subscriptionLimitExceeded.
     */
    func confirmSubscriptionAsync(input: SimpleNotificationModel.ConfirmSubscriptionInput, completion: @escaping (HTTPResult<SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription>) -> ()) throws

    /**
     Invokes the ConfirmSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated ConfirmSubscriptionInput object being passed to this operation.
     - Returns: The ConfirmSubscriptionResponseForConfirmSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, subscriptionLimitExceeded.
     */
    func confirmSubscriptionSync(input: SimpleNotificationModel.ConfirmSubscriptionInput) throws -> SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription

    /**
     Invokes the CreatePlatformApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePlatformApplicationInput object being passed to this operation.
         - completion: The CreatePlatformApplicationResponseForCreatePlatformApplication object or an error will be passed to this 
           callback when the operation is complete. The CreatePlatformApplicationResponseForCreatePlatformApplication
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func createPlatformApplicationAsync(input: SimpleNotificationModel.CreatePlatformApplicationInput, completion: @escaping (HTTPResult<SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication>) -> ()) throws

    /**
     Invokes the CreatePlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlatformApplicationInput object being passed to this operation.
     - Returns: The CreatePlatformApplicationResponseForCreatePlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func createPlatformApplicationSync(input: SimpleNotificationModel.CreatePlatformApplicationInput) throws -> SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication

    /**
     Invokes the CreatePlatformEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePlatformEndpointInput object being passed to this operation.
         - completion: The CreateEndpointResponseForCreatePlatformEndpoint object or an error will be passed to this 
           callback when the operation is complete. The CreateEndpointResponseForCreatePlatformEndpoint
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func createPlatformEndpointAsync(input: SimpleNotificationModel.CreatePlatformEndpointInput, completion: @escaping (HTTPResult<SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint>) -> ()) throws

    /**
     Invokes the CreatePlatformEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlatformEndpointInput object being passed to this operation.
     - Returns: The CreateEndpointResponseForCreatePlatformEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func createPlatformEndpointSync(input: SimpleNotificationModel.CreatePlatformEndpointInput) throws -> SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint

    /**
     Invokes the CreateTopic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTopicInput object being passed to this operation.
         - completion: The CreateTopicResponseForCreateTopic object or an error will be passed to this 
           callback when the operation is complete. The CreateTopicResponseForCreateTopic
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, internalError, invalidParameter, invalidSecurity, staleTag, tagLimitExceeded, tagPolicy, topicLimitExceeded.
     */
    func createTopicAsync(input: SimpleNotificationModel.CreateTopicInput, completion: @escaping (HTTPResult<SimpleNotificationModel.CreateTopicResponseForCreateTopic>) -> ()) throws

    /**
     Invokes the CreateTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTopicInput object being passed to this operation.
     - Returns: The CreateTopicResponseForCreateTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, invalidSecurity, staleTag, tagLimitExceeded, tagPolicy, topicLimitExceeded.
     */
    func createTopicSync(input: SimpleNotificationModel.CreateTopicInput) throws -> SimpleNotificationModel.CreateTopicResponseForCreateTopic

    /**
     Invokes the DeleteEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func deleteEndpointAsync(input: SimpleNotificationModel.DeleteEndpointInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func deleteEndpointSync(input: SimpleNotificationModel.DeleteEndpointInput) throws

    /**
     Invokes the DeletePlatformApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func deletePlatformApplicationAsync(input: SimpleNotificationModel.DeletePlatformApplicationInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeletePlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func deletePlatformApplicationSync(input: SimpleNotificationModel.DeletePlatformApplicationInput) throws

    /**
     Invokes the DeleteTopic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, concurrentAccess, internalError, invalidParameter, notFound, staleTag, tagPolicy.
     */
    func deleteTopicAsync(input: SimpleNotificationModel.DeleteTopicInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, notFound, staleTag, tagPolicy.
     */
    func deleteTopicSync(input: SimpleNotificationModel.DeleteTopicInput) throws

    /**
     Invokes the GetEndpointAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetEndpointAttributesInput object being passed to this operation.
         - completion: The GetEndpointAttributesResponseForGetEndpointAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetEndpointAttributesResponseForGetEndpointAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func getEndpointAttributesAsync(input: SimpleNotificationModel.GetEndpointAttributesInput, completion: @escaping (HTTPResult<SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes>) -> ()) throws

    /**
     Invokes the GetEndpointAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetEndpointAttributesInput object being passed to this operation.
     - Returns: The GetEndpointAttributesResponseForGetEndpointAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func getEndpointAttributesSync(input: SimpleNotificationModel.GetEndpointAttributesInput) throws -> SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes

    /**
     Invokes the GetPlatformApplicationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPlatformApplicationAttributesInput object being passed to this operation.
         - completion: The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func getPlatformApplicationAttributesAsync(input: SimpleNotificationModel.GetPlatformApplicationAttributesInput, completion: @escaping (HTTPResult<SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes>) -> ()) throws

    /**
     Invokes the GetPlatformApplicationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPlatformApplicationAttributesInput object being passed to this operation.
     - Returns: The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func getPlatformApplicationAttributesSync(input: SimpleNotificationModel.GetPlatformApplicationAttributesInput) throws -> SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes

    /**
     Invokes the GetSMSAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetSMSAttributesInput object being passed to this operation.
         - completion: The GetSMSAttributesResponseForGetSMSAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetSMSAttributesResponseForGetSMSAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    func getSMSAttributesAsync(input: SimpleNotificationModel.GetSMSAttributesInput, completion: @escaping (HTTPResult<SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes>) -> ()) throws

    /**
     Invokes the GetSMSAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSMSAttributesInput object being passed to this operation.
     - Returns: The GetSMSAttributesResponseForGetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func getSMSAttributesSync(input: SimpleNotificationModel.GetSMSAttributesInput) throws -> SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes

    /**
     Invokes the GetSubscriptionAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetSubscriptionAttributesInput object being passed to this operation.
         - completion: The GetSubscriptionAttributesResponseForGetSubscriptionAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetSubscriptionAttributesResponseForGetSubscriptionAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func getSubscriptionAttributesAsync(input: SimpleNotificationModel.GetSubscriptionAttributesInput, completion: @escaping (HTTPResult<SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes>) -> ()) throws

    /**
     Invokes the GetSubscriptionAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSubscriptionAttributesInput object being passed to this operation.
     - Returns: The GetSubscriptionAttributesResponseForGetSubscriptionAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func getSubscriptionAttributesSync(input: SimpleNotificationModel.GetSubscriptionAttributesInput) throws -> SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes

    /**
     Invokes the GetTopicAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTopicAttributesInput object being passed to this operation.
         - completion: The GetTopicAttributesResponseForGetTopicAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetTopicAttributesResponseForGetTopicAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func getTopicAttributesAsync(input: SimpleNotificationModel.GetTopicAttributesInput, completion: @escaping (HTTPResult<SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes>) -> ()) throws

    /**
     Invokes the GetTopicAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTopicAttributesInput object being passed to this operation.
     - Returns: The GetTopicAttributesResponseForGetTopicAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func getTopicAttributesSync(input: SimpleNotificationModel.GetTopicAttributesInput) throws -> SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes

    /**
     Invokes the ListEndpointsByPlatformApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListEndpointsByPlatformApplicationInput object being passed to this operation.
         - completion: The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication object or an error will be passed to this 
           callback when the operation is complete. The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func listEndpointsByPlatformApplicationAsync(input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput, completion: @escaping (HTTPResult<SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication>) -> ()) throws

    /**
     Invokes the ListEndpointsByPlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListEndpointsByPlatformApplicationInput object being passed to this operation.
     - Returns: The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func listEndpointsByPlatformApplicationSync(input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput) throws -> SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication

    /**
     Invokes the ListPhoneNumbersOptedOut operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPhoneNumbersOptedOutInput object being passed to this operation.
         - completion: The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut object or an error will be passed to this 
           callback when the operation is complete. The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    func listPhoneNumbersOptedOutAsync(input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput, completion: @escaping (HTTPResult<SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut>) -> ()) throws

    /**
     Invokes the ListPhoneNumbersOptedOut operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPhoneNumbersOptedOutInput object being passed to this operation.
     - Returns: The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func listPhoneNumbersOptedOutSync(input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput) throws -> SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut

    /**
     Invokes the ListPlatformApplications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPlatformApplicationsInput object being passed to this operation.
         - completion: The ListPlatformApplicationsResponseForListPlatformApplications object or an error will be passed to this 
           callback when the operation is complete. The ListPlatformApplicationsResponseForListPlatformApplications
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func listPlatformApplicationsAsync(input: SimpleNotificationModel.ListPlatformApplicationsInput, completion: @escaping (HTTPResult<SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications>) -> ()) throws

    /**
     Invokes the ListPlatformApplications operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPlatformApplicationsInput object being passed to this operation.
     - Returns: The ListPlatformApplicationsResponseForListPlatformApplications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func listPlatformApplicationsSync(input: SimpleNotificationModel.ListPlatformApplicationsInput) throws -> SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications

    /**
     Invokes the ListSubscriptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSubscriptionsInput object being passed to this operation.
         - completion: The ListSubscriptionsResponseForListSubscriptions object or an error will be passed to this 
           callback when the operation is complete. The ListSubscriptionsResponseForListSubscriptions
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func listSubscriptionsAsync(input: SimpleNotificationModel.ListSubscriptionsInput, completion: @escaping (HTTPResult<SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions>) -> ()) throws

    /**
     Invokes the ListSubscriptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSubscriptionsInput object being passed to this operation.
     - Returns: The ListSubscriptionsResponseForListSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func listSubscriptionsSync(input: SimpleNotificationModel.ListSubscriptionsInput) throws -> SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions

    /**
     Invokes the ListSubscriptionsByTopic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSubscriptionsByTopicInput object being passed to this operation.
         - completion: The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic object or an error will be passed to this 
           callback when the operation is complete. The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func listSubscriptionsByTopicAsync(input: SimpleNotificationModel.ListSubscriptionsByTopicInput, completion: @escaping (HTTPResult<SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic>) -> ()) throws

    /**
     Invokes the ListSubscriptionsByTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSubscriptionsByTopicInput object being passed to this operation.
     - Returns: The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func listSubscriptionsByTopicSync(input: SimpleNotificationModel.ListSubscriptionsByTopicInput) throws -> SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
         - completion: The ListTagsForResourceResponseForListTagsForResource object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceResponseForListTagsForResource
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, tagPolicy.
     */
    func listTagsForResourceAsync(input: SimpleNotificationModel.ListTagsForResourceRequest, completion: @escaping (HTTPResult<SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponseForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, tagPolicy.
     */
    func listTagsForResourceSync(input: SimpleNotificationModel.ListTagsForResourceRequest) throws -> SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource

    /**
     Invokes the ListTopics operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTopicsInput object being passed to this operation.
         - completion: The ListTopicsResponseForListTopics object or an error will be passed to this 
           callback when the operation is complete. The ListTopicsResponseForListTopics
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func listTopicsAsync(input: SimpleNotificationModel.ListTopicsInput, completion: @escaping (HTTPResult<SimpleNotificationModel.ListTopicsResponseForListTopics>) -> ()) throws

    /**
     Invokes the ListTopics operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTopicsInput object being passed to this operation.
     - Returns: The ListTopicsResponseForListTopics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func listTopicsSync(input: SimpleNotificationModel.ListTopicsInput) throws -> SimpleNotificationModel.ListTopicsResponseForListTopics

    /**
     Invokes the OptInPhoneNumber operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated OptInPhoneNumberInput object being passed to this operation.
         - completion: The OptInPhoneNumberResponseForOptInPhoneNumber object or an error will be passed to this 
           callback when the operation is complete. The OptInPhoneNumberResponseForOptInPhoneNumber
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    func optInPhoneNumberAsync(input: SimpleNotificationModel.OptInPhoneNumberInput, completion: @escaping (HTTPResult<SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber>) -> ()) throws

    /**
     Invokes the OptInPhoneNumber operation waiting for the response before returning.

     - Parameters:
         - input: The validated OptInPhoneNumberInput object being passed to this operation.
     - Returns: The OptInPhoneNumberResponseForOptInPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func optInPhoneNumberSync(input: SimpleNotificationModel.OptInPhoneNumberInput) throws -> SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber

    /**
     Invokes the Publish operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PublishInput object being passed to this operation.
         - completion: The PublishResponseForPublish object or an error will be passed to this 
           callback when the operation is complete. The PublishResponseForPublish
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, endpointDisabled, internalError, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled.
     */
    func publishAsync(input: SimpleNotificationModel.PublishInput, completion: @escaping (HTTPResult<SimpleNotificationModel.PublishResponseForPublish>) -> ()) throws

    /**
     Invokes the Publish operation waiting for the response before returning.

     - Parameters:
         - input: The validated PublishInput object being passed to this operation.
     - Returns: The PublishResponseForPublish object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, endpointDisabled, internalError, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled.
     */
    func publishSync(input: SimpleNotificationModel.PublishInput) throws -> SimpleNotificationModel.PublishResponseForPublish

    /**
     Invokes the RemovePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func removePermissionAsync(input: SimpleNotificationModel.RemovePermissionInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RemovePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func removePermissionSync(input: SimpleNotificationModel.RemovePermissionInput) throws

    /**
     Invokes the SetEndpointAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func setEndpointAttributesAsync(input: SimpleNotificationModel.SetEndpointAttributesInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SetEndpointAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func setEndpointAttributesSync(input: SimpleNotificationModel.SetEndpointAttributesInput) throws

    /**
     Invokes the SetPlatformApplicationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func setPlatformApplicationAttributesAsync(input: SimpleNotificationModel.SetPlatformApplicationAttributesInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SetPlatformApplicationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func setPlatformApplicationAttributesSync(input: SimpleNotificationModel.SetPlatformApplicationAttributesInput) throws

    /**
     Invokes the SetSMSAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetSMSAttributesInput object being passed to this operation.
         - completion: The SetSMSAttributesResponseForSetSMSAttributes object or an error will be passed to this 
           callback when the operation is complete. The SetSMSAttributesResponseForSetSMSAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    func setSMSAttributesAsync(input: SimpleNotificationModel.SetSMSAttributesInput, completion: @escaping (HTTPResult<SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes>) -> ()) throws

    /**
     Invokes the SetSMSAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetSMSAttributesInput object being passed to this operation.
     - Returns: The SetSMSAttributesResponseForSetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func setSMSAttributesSync(input: SimpleNotificationModel.SetSMSAttributesInput) throws -> SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes

    /**
     Invokes the SetSubscriptionAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound.
     */
    func setSubscriptionAttributesAsync(input: SimpleNotificationModel.SetSubscriptionAttributesInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SetSubscriptionAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound.
     */
    func setSubscriptionAttributesSync(input: SimpleNotificationModel.SetSubscriptionAttributesInput) throws

    /**
     Invokes the SetTopicAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func setTopicAttributesAsync(input: SimpleNotificationModel.SetTopicAttributesInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SetTopicAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func setTopicAttributesSync(input: SimpleNotificationModel.SetTopicAttributesInput) throws

    /**
     Invokes the Subscribe operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubscribeInput object being passed to this operation.
         - completion: The SubscribeResponseForSubscribe object or an error will be passed to this 
           callback when the operation is complete. The SubscribeResponseForSubscribe
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, invalidSecurity, notFound, subscriptionLimitExceeded.
     */
    func subscribeAsync(input: SimpleNotificationModel.SubscribeInput, completion: @escaping (HTTPResult<SimpleNotificationModel.SubscribeResponseForSubscribe>) -> ()) throws

    /**
     Invokes the Subscribe operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubscribeInput object being passed to this operation.
     - Returns: The SubscribeResponseForSubscribe object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, invalidSecurity, notFound, subscriptionLimitExceeded.
     */
    func subscribeSync(input: SimpleNotificationModel.SubscribeInput) throws -> SimpleNotificationModel.SubscribeResponseForSubscribe

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
         - completion: The TagResourceResponseForTagResource object or an error will be passed to this 
           callback when the operation is complete. The TagResourceResponseForTagResource
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    func tagResourceAsync(input: SimpleNotificationModel.TagResourceRequest, completion: @escaping (HTTPResult<SimpleNotificationModel.TagResourceResponseForTagResource>) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponseForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    func tagResourceSync(input: SimpleNotificationModel.TagResourceRequest) throws -> SimpleNotificationModel.TagResourceResponseForTagResource

    /**
     Invokes the Unsubscribe operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func unsubscribeAsync(input: SimpleNotificationModel.UnsubscribeInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the Unsubscribe operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func unsubscribeSync(input: SimpleNotificationModel.UnsubscribeInput) throws

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
         - completion: The UntagResourceResponseForUntagResource object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceResponseForUntagResource
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    func untagResourceAsync(input: SimpleNotificationModel.UntagResourceRequest, completion: @escaping (HTTPResult<SimpleNotificationModel.UntagResourceResponseForUntagResource>) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponseForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    func untagResourceSync(input: SimpleNotificationModel.UntagResourceRequest) throws -> SimpleNotificationModel.UntagResourceResponseForUntagResource
}
