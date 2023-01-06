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
// SimpleNotificationClientProtocolV2.swift
// SimpleNotificationClient
//

import Foundation
import SimpleNotificationModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the SimpleNotification service.
 */
public protocol SimpleNotificationClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    typealias AddPermissionFunctionType = (
            _ input: SimpleNotificationModel.AddPermissionInput) async throws -> ()
    typealias CheckIfPhoneNumberIsOptedOutFunctionType = (
            _ input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput) async throws -> SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut
    typealias ConfirmSubscriptionFunctionType = (
            _ input: SimpleNotificationModel.ConfirmSubscriptionInput) async throws -> SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription
    typealias CreatePlatformApplicationFunctionType = (
            _ input: SimpleNotificationModel.CreatePlatformApplicationInput) async throws -> SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication
    typealias CreatePlatformEndpointFunctionType = (
            _ input: SimpleNotificationModel.CreatePlatformEndpointInput) async throws -> SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint
    typealias CreateSMSSandboxPhoneNumberFunctionType = (
            _ input: SimpleNotificationModel.CreateSMSSandboxPhoneNumberInput) async throws -> SimpleNotificationModel.CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber
    typealias CreateTopicFunctionType = (
            _ input: SimpleNotificationModel.CreateTopicInput) async throws -> SimpleNotificationModel.CreateTopicResponseForCreateTopic
    typealias DeleteEndpointFunctionType = (
            _ input: SimpleNotificationModel.DeleteEndpointInput) async throws -> ()
    typealias DeletePlatformApplicationFunctionType = (
            _ input: SimpleNotificationModel.DeletePlatformApplicationInput) async throws -> ()
    typealias DeleteSMSSandboxPhoneNumberFunctionType = (
            _ input: SimpleNotificationModel.DeleteSMSSandboxPhoneNumberInput) async throws -> SimpleNotificationModel.DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber
    typealias DeleteTopicFunctionType = (
            _ input: SimpleNotificationModel.DeleteTopicInput) async throws -> ()
    typealias GetDataProtectionPolicyFunctionType = (
            _ input: SimpleNotificationModel.GetDataProtectionPolicyInput) async throws -> SimpleNotificationModel.GetDataProtectionPolicyResponseForGetDataProtectionPolicy
    typealias GetEndpointAttributesFunctionType = (
            _ input: SimpleNotificationModel.GetEndpointAttributesInput) async throws -> SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes
    typealias GetPlatformApplicationAttributesFunctionType = (
            _ input: SimpleNotificationModel.GetPlatformApplicationAttributesInput) async throws -> SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes
    typealias GetSMSAttributesFunctionType = (
            _ input: SimpleNotificationModel.GetSMSAttributesInput) async throws -> SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes
    typealias GetSMSSandboxAccountStatusFunctionType = (
            _ input: SimpleNotificationModel.GetSMSSandboxAccountStatusInput) async throws -> SimpleNotificationModel.GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus
    typealias GetSubscriptionAttributesFunctionType = (
            _ input: SimpleNotificationModel.GetSubscriptionAttributesInput) async throws -> SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes
    typealias GetTopicAttributesFunctionType = (
            _ input: SimpleNotificationModel.GetTopicAttributesInput) async throws -> SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes
    typealias ListEndpointsByPlatformApplicationFunctionType = (
            _ input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput) async throws -> SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication
    typealias ListOriginationNumbersFunctionType = (
            _ input: SimpleNotificationModel.ListOriginationNumbersRequest) async throws -> SimpleNotificationModel.ListOriginationNumbersResultForListOriginationNumbers
    typealias ListPhoneNumbersOptedOutFunctionType = (
            _ input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput) async throws -> SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut
    typealias ListPlatformApplicationsFunctionType = (
            _ input: SimpleNotificationModel.ListPlatformApplicationsInput) async throws -> SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications
    typealias ListSMSSandboxPhoneNumbersFunctionType = (
            _ input: SimpleNotificationModel.ListSMSSandboxPhoneNumbersInput) async throws -> SimpleNotificationModel.ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers
    typealias ListSubscriptionsFunctionType = (
            _ input: SimpleNotificationModel.ListSubscriptionsInput) async throws -> SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions
    typealias ListSubscriptionsByTopicFunctionType = (
            _ input: SimpleNotificationModel.ListSubscriptionsByTopicInput) async throws -> SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic
    typealias ListTagsForResourceFunctionType = (
            _ input: SimpleNotificationModel.ListTagsForResourceRequest) async throws -> SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource
    typealias ListTopicsFunctionType = (
            _ input: SimpleNotificationModel.ListTopicsInput) async throws -> SimpleNotificationModel.ListTopicsResponseForListTopics
    typealias OptInPhoneNumberFunctionType = (
            _ input: SimpleNotificationModel.OptInPhoneNumberInput) async throws -> SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber
    typealias PublishFunctionType = (
            _ input: SimpleNotificationModel.PublishInput) async throws -> SimpleNotificationModel.PublishResponseForPublish
    typealias PublishBatchFunctionType = (
            _ input: SimpleNotificationModel.PublishBatchInput) async throws -> SimpleNotificationModel.PublishBatchResponseForPublishBatch
    typealias PutDataProtectionPolicyFunctionType = (
            _ input: SimpleNotificationModel.PutDataProtectionPolicyInput) async throws -> ()
    typealias RemovePermissionFunctionType = (
            _ input: SimpleNotificationModel.RemovePermissionInput) async throws -> ()
    typealias SetEndpointAttributesFunctionType = (
            _ input: SimpleNotificationModel.SetEndpointAttributesInput) async throws -> ()
    typealias SetPlatformApplicationAttributesFunctionType = (
            _ input: SimpleNotificationModel.SetPlatformApplicationAttributesInput) async throws -> ()
    typealias SetSMSAttributesFunctionType = (
            _ input: SimpleNotificationModel.SetSMSAttributesInput) async throws -> SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes
    typealias SetSubscriptionAttributesFunctionType = (
            _ input: SimpleNotificationModel.SetSubscriptionAttributesInput) async throws -> ()
    typealias SetTopicAttributesFunctionType = (
            _ input: SimpleNotificationModel.SetTopicAttributesInput) async throws -> ()
    typealias SubscribeFunctionType = (
            _ input: SimpleNotificationModel.SubscribeInput) async throws -> SimpleNotificationModel.SubscribeResponseForSubscribe
    typealias TagResourceFunctionType = (
            _ input: SimpleNotificationModel.TagResourceRequest) async throws -> SimpleNotificationModel.TagResourceResponseForTagResource
    typealias UnsubscribeFunctionType = (
            _ input: SimpleNotificationModel.UnsubscribeInput) async throws -> ()
    typealias UntagResourceFunctionType = (
            _ input: SimpleNotificationModel.UntagResourceRequest) async throws -> SimpleNotificationModel.UntagResourceResponseForUntagResource
    typealias VerifySMSSandboxPhoneNumberFunctionType = (
            _ input: SimpleNotificationModel.VerifySMSSandboxPhoneNumberInput) async throws -> SimpleNotificationModel.VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber

    /**
     Invokes the AddPermission operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func addPermission(
            input: SimpleNotificationModel.AddPermissionInput) async throws

    /**
     Invokes the CheckIfPhoneNumberIsOptedOut operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CheckIfPhoneNumberIsOptedOutInput object being passed to this operation.
     - Returns: The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func checkIfPhoneNumberIsOptedOut(
            input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput) async throws -> SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut

    /**
     Invokes the ConfirmSubscription operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ConfirmSubscriptionInput object being passed to this operation.
     - Returns: The ConfirmSubscriptionResponseForConfirmSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, subscriptionLimitExceeded.
     */
    func confirmSubscription(
            input: SimpleNotificationModel.ConfirmSubscriptionInput) async throws -> SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription

    /**
     Invokes the CreatePlatformApplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreatePlatformApplicationInput object being passed to this operation.
     - Returns: The CreatePlatformApplicationResponseForCreatePlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func createPlatformApplication(
            input: SimpleNotificationModel.CreatePlatformApplicationInput) async throws -> SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication

    /**
     Invokes the CreatePlatformEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreatePlatformEndpointInput object being passed to this operation.
     - Returns: The CreateEndpointResponseForCreatePlatformEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func createPlatformEndpoint(
            input: SimpleNotificationModel.CreatePlatformEndpointInput) async throws -> SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint

    /**
     Invokes the CreateSMSSandboxPhoneNumber operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateSMSSandboxPhoneNumberInput object being passed to this operation.
     - Returns: The CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, optedOut, throttled, userError.
     */
    func createSMSSandboxPhoneNumber(
            input: SimpleNotificationModel.CreateSMSSandboxPhoneNumberInput) async throws -> SimpleNotificationModel.CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber

    /**
     Invokes the CreateTopic operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTopicInput object being passed to this operation.
     - Returns: The CreateTopicResponseForCreateTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, invalidSecurity, staleTag, tagLimitExceeded, tagPolicy, topicLimitExceeded.
     */
    func createTopic(
            input: SimpleNotificationModel.CreateTopicInput) async throws -> SimpleNotificationModel.CreateTopicResponseForCreateTopic

    /**
     Invokes the DeleteEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func deleteEndpoint(
            input: SimpleNotificationModel.DeleteEndpointInput) async throws

    /**
     Invokes the DeletePlatformApplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func deletePlatformApplication(
            input: SimpleNotificationModel.DeletePlatformApplicationInput) async throws

    /**
     Invokes the DeleteSMSSandboxPhoneNumber operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteSMSSandboxPhoneNumberInput object being passed to this operation.
     - Returns: The DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, resourceNotFound, throttled, userError.
     */
    func deleteSMSSandboxPhoneNumber(
            input: SimpleNotificationModel.DeleteSMSSandboxPhoneNumberInput) async throws -> SimpleNotificationModel.DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber

    /**
     Invokes the DeleteTopic operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, notFound, staleTag, tagPolicy.
     */
    func deleteTopic(
            input: SimpleNotificationModel.DeleteTopicInput) async throws

    /**
     Invokes the GetDataProtectionPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetDataProtectionPolicyInput object being passed to this operation.
     - Returns: The GetDataProtectionPolicyResponseForGetDataProtectionPolicy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func getDataProtectionPolicy(
            input: SimpleNotificationModel.GetDataProtectionPolicyInput) async throws -> SimpleNotificationModel.GetDataProtectionPolicyResponseForGetDataProtectionPolicy

    /**
     Invokes the GetEndpointAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetEndpointAttributesInput object being passed to this operation.
     - Returns: The GetEndpointAttributesResponseForGetEndpointAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func getEndpointAttributes(
            input: SimpleNotificationModel.GetEndpointAttributesInput) async throws -> SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes

    /**
     Invokes the GetPlatformApplicationAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetPlatformApplicationAttributesInput object being passed to this operation.
     - Returns: The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func getPlatformApplicationAttributes(
            input: SimpleNotificationModel.GetPlatformApplicationAttributesInput) async throws -> SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes

    /**
     Invokes the GetSMSAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetSMSAttributesInput object being passed to this operation.
     - Returns: The GetSMSAttributesResponseForGetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func getSMSAttributes(
            input: SimpleNotificationModel.GetSMSAttributesInput) async throws -> SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes

    /**
     Invokes the GetSMSSandboxAccountStatus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetSMSSandboxAccountStatusInput object being passed to this operation.
     - Returns: The GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, throttled.
     */
    func getSMSSandboxAccountStatus(
            input: SimpleNotificationModel.GetSMSSandboxAccountStatusInput) async throws -> SimpleNotificationModel.GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus

    /**
     Invokes the GetSubscriptionAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetSubscriptionAttributesInput object being passed to this operation.
     - Returns: The GetSubscriptionAttributesResponseForGetSubscriptionAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func getSubscriptionAttributes(
            input: SimpleNotificationModel.GetSubscriptionAttributesInput) async throws -> SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes

    /**
     Invokes the GetTopicAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTopicAttributesInput object being passed to this operation.
     - Returns: The GetTopicAttributesResponseForGetTopicAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func getTopicAttributes(
            input: SimpleNotificationModel.GetTopicAttributesInput) async throws -> SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes

    /**
     Invokes the ListEndpointsByPlatformApplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListEndpointsByPlatformApplicationInput object being passed to this operation.
     - Returns: The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func listEndpointsByPlatformApplication(
            input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput) async throws -> SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication

    /**
     Invokes the ListOriginationNumbers operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListOriginationNumbersRequest object being passed to this operation.
     - Returns: The ListOriginationNumbersResultForListOriginationNumbers object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled, validation.
     */
    func listOriginationNumbers(
            input: SimpleNotificationModel.ListOriginationNumbersRequest) async throws -> SimpleNotificationModel.ListOriginationNumbersResultForListOriginationNumbers

    /**
     Invokes the ListPhoneNumbersOptedOut operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListPhoneNumbersOptedOutInput object being passed to this operation.
     - Returns: The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func listPhoneNumbersOptedOut(
            input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput) async throws -> SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut

    /**
     Invokes the ListPlatformApplications operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListPlatformApplicationsInput object being passed to this operation.
     - Returns: The ListPlatformApplicationsResponseForListPlatformApplications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func listPlatformApplications(
            input: SimpleNotificationModel.ListPlatformApplicationsInput) async throws -> SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications

    /**
     Invokes the ListSMSSandboxPhoneNumbers operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListSMSSandboxPhoneNumbersInput object being passed to this operation.
     - Returns: The ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, resourceNotFound, throttled.
     */
    func listSMSSandboxPhoneNumbers(
            input: SimpleNotificationModel.ListSMSSandboxPhoneNumbersInput) async throws -> SimpleNotificationModel.ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers

    /**
     Invokes the ListSubscriptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListSubscriptionsInput object being passed to this operation.
     - Returns: The ListSubscriptionsResponseForListSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func listSubscriptions(
            input: SimpleNotificationModel.ListSubscriptionsInput) async throws -> SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions

    /**
     Invokes the ListSubscriptionsByTopic operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListSubscriptionsByTopicInput object being passed to this operation.
     - Returns: The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func listSubscriptionsByTopic(
            input: SimpleNotificationModel.ListSubscriptionsByTopicInput) async throws -> SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponseForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, tagPolicy.
     */
    func listTagsForResource(
            input: SimpleNotificationModel.ListTagsForResourceRequest) async throws -> SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource

    /**
     Invokes the ListTopics operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTopicsInput object being passed to this operation.
     - Returns: The ListTopicsResponseForListTopics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    func listTopics(
            input: SimpleNotificationModel.ListTopicsInput) async throws -> SimpleNotificationModel.ListTopicsResponseForListTopics

    /**
     Invokes the OptInPhoneNumber operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated OptInPhoneNumberInput object being passed to this operation.
     - Returns: The OptInPhoneNumberResponseForOptInPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func optInPhoneNumber(
            input: SimpleNotificationModel.OptInPhoneNumberInput) async throws -> SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber

    /**
     Invokes the Publish operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PublishInput object being passed to this operation.
     - Returns: The PublishResponseForPublish object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, endpointDisabled, internalError, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled, validation.
     */
    func publish(
            input: SimpleNotificationModel.PublishInput) async throws -> SimpleNotificationModel.PublishResponseForPublish

    /**
     Invokes the PublishBatch operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PublishBatchInput object being passed to this operation.
     - Returns: The PublishBatchResponseForPublishBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, batchEntryIdsNotDistinct, batchRequestTooLong, emptyBatchRequest, endpointDisabled, internalError, invalidBatchEntryId, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled, tooManyEntriesInBatchRequest, validation.
     */
    func publishBatch(
            input: SimpleNotificationModel.PublishBatchInput) async throws -> SimpleNotificationModel.PublishBatchResponseForPublishBatch

    /**
     Invokes the PutDataProtectionPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutDataProtectionPolicyInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func putDataProtectionPolicy(
            input: SimpleNotificationModel.PutDataProtectionPolicyInput) async throws

    /**
     Invokes the RemovePermission operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func removePermission(
            input: SimpleNotificationModel.RemovePermissionInput) async throws

    /**
     Invokes the SetEndpointAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func setEndpointAttributes(
            input: SimpleNotificationModel.SetEndpointAttributesInput) async throws

    /**
     Invokes the SetPlatformApplicationAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    func setPlatformApplicationAttributes(
            input: SimpleNotificationModel.SetPlatformApplicationAttributesInput) async throws

    /**
     Invokes the SetSMSAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetSMSAttributesInput object being passed to this operation.
     - Returns: The SetSMSAttributesResponseForSetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    func setSMSAttributes(
            input: SimpleNotificationModel.SetSMSAttributesInput) async throws -> SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes

    /**
     Invokes the SetSubscriptionAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound.
     */
    func setSubscriptionAttributes(
            input: SimpleNotificationModel.SetSubscriptionAttributesInput) async throws

    /**
     Invokes the SetTopicAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func setTopicAttributes(
            input: SimpleNotificationModel.SetTopicAttributesInput) async throws

    /**
     Invokes the Subscribe operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SubscribeInput object being passed to this operation.
     - Returns: The SubscribeResponseForSubscribe object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, invalidSecurity, notFound, subscriptionLimitExceeded.
     */
    func subscribe(
            input: SimpleNotificationModel.SubscribeInput) async throws -> SimpleNotificationModel.SubscribeResponseForSubscribe

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponseForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    func tagResource(
            input: SimpleNotificationModel.TagResourceRequest) async throws -> SimpleNotificationModel.TagResourceResponseForTagResource

    /**
     Invokes the Unsubscribe operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func unsubscribe(
            input: SimpleNotificationModel.UnsubscribeInput) async throws

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponseForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    func untagResource(
            input: SimpleNotificationModel.UntagResourceRequest) async throws -> SimpleNotificationModel.UntagResourceResponseForUntagResource

    /**
     Invokes the VerifySMSSandboxPhoneNumber operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated VerifySMSSandboxPhoneNumberInput object being passed to this operation.
     - Returns: The VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, resourceNotFound, throttled, verification.
     */
    func verifySMSSandboxPhoneNumber(
            input: SimpleNotificationModel.VerifySMSSandboxPhoneNumberInput) async throws -> SimpleNotificationModel.VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber
#endif
}
