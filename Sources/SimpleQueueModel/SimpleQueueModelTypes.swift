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
// SimpleQueueModelTypes.swift
// SimpleQueueModel
//

import Foundation

/**
 Type definition for the AWSAccountIdList field.
 */
public typealias AWSAccountIdList = [String]

/**
 Type definition for the ActionNameList field.
 */
public typealias ActionNameList = [String]

/**
 Type definition for the AttributeNameList field.
 */
public typealias AttributeNameList = [QueueAttributeName]

/**
 Type definition for the BatchResultErrorEntryList field.
 */
public typealias BatchResultErrorEntryList = [BatchResultErrorEntry]

/**
 Type definition for the Binary field.
 */
public typealias Binary = Data

/**
 Type definition for the BinaryList field.
 */
public typealias BinaryList = [Binary]

/**
 Type definition for the Boolean field.
 */
public typealias Boolean = Bool

/**
 Type definition for the BoxedInteger field.
 */
public typealias BoxedInteger = Int

/**
 Type definition for the ChangeMessageVisibilityBatchRequestEntryList field.
 */
public typealias ChangeMessageVisibilityBatchRequestEntryList = [ChangeMessageVisibilityBatchRequestEntry]

/**
 Type definition for the ChangeMessageVisibilityBatchResultEntryList field.
 */
public typealias ChangeMessageVisibilityBatchResultEntryList = [ChangeMessageVisibilityBatchResultEntry]

/**
 Type definition for the DeleteMessageBatchRequestEntryList field.
 */
public typealias DeleteMessageBatchRequestEntryList = [DeleteMessageBatchRequestEntry]

/**
 Type definition for the DeleteMessageBatchResultEntryList field.
 */
public typealias DeleteMessageBatchResultEntryList = [DeleteMessageBatchResultEntry]

/**
 Type definition for the Integer field.
 */
public typealias Integer = Int

/**
 Type definition for the MessageAttributeName field.
 */
public typealias MessageAttributeName = String

/**
 Type definition for the MessageAttributeNameList field.
 */
public typealias MessageAttributeNameList = [MessageAttributeName]

/**
 Type definition for the MessageBodyAttributeMap field.
 */
public typealias MessageBodyAttributeMap = [String: MessageAttributeValue]

/**
 Type definition for the MessageBodySystemAttributeMap field.
 */
public typealias MessageBodySystemAttributeMap = [MessageSystemAttributeNameForSends: MessageSystemAttributeValue]

/**
 Type definition for the MessageList field.
 */
public typealias MessageList = [Message]

/**
 Type definition for the MessageSystemAttributeMap field.
 */
public typealias MessageSystemAttributeMap = [MessageSystemAttributeName: String]

/**
 Enumeration restricting the values of the MessageSystemAttributeName field.
 */
public enum MessageSystemAttributeName: String, Codable, CustomStringConvertible {
    case awstraceheader = "AWSTraceHeader"
    case approximatefirstreceivetimestamp = "ApproximateFirstReceiveTimestamp"
    case approximatereceivecount = "ApproximateReceiveCount"
    case messagededuplicationid = "MessageDeduplicationId"
    case messagegroupid = "MessageGroupId"
    case senderid = "SenderId"
    case senttimestamp = "SentTimestamp"
    case sequencenumber = "SequenceNumber"

    public var description: String {
        return rawValue
    }
    
    public static let __default: MessageSystemAttributeName = .awstraceheader
}

/**
 Enumeration restricting the values of the MessageSystemAttributeNameForSends field.
 */
public enum MessageSystemAttributeNameForSends: String, Codable, CustomStringConvertible {
    case awstraceheader = "AWSTraceHeader"

    public var description: String {
        return rawValue
    }
    
    public static let __default: MessageSystemAttributeNameForSends = .awstraceheader
}

/**
 Type definition for the QueueAttributeMap field.
 */
public typealias QueueAttributeMap = [QueueAttributeName: String]

/**
 Enumeration restricting the values of the QueueAttributeName field.
 */
public enum QueueAttributeName: String, Codable, CustomStringConvertible {
    case all = "All"
    case approximatenumberofmessages = "ApproximateNumberOfMessages"
    case approximatenumberofmessagesdelayed = "ApproximateNumberOfMessagesDelayed"
    case approximatenumberofmessagesnotvisible = "ApproximateNumberOfMessagesNotVisible"
    case contentbaseddeduplication = "ContentBasedDeduplication"
    case createdtimestamp = "CreatedTimestamp"
    case deduplicationscope = "DeduplicationScope"
    case delayseconds = "DelaySeconds"
    case fifoqueue = "FifoQueue"
    case fifothroughputlimit = "FifoThroughputLimit"
    case kmsdatakeyreuseperiodseconds = "KmsDataKeyReusePeriodSeconds"
    case kmsmasterkeyid = "KmsMasterKeyId"
    case lastmodifiedtimestamp = "LastModifiedTimestamp"
    case maximummessagesize = "MaximumMessageSize"
    case messageretentionperiod = "MessageRetentionPeriod"
    case policy = "Policy"
    case queuearn = "QueueArn"
    case receivemessagewaittimeseconds = "ReceiveMessageWaitTimeSeconds"
    case redriveallowpolicy = "RedriveAllowPolicy"
    case redrivepolicy = "RedrivePolicy"
    case sqsmanagedsseenabled = "SqsManagedSseEnabled"
    case visibilitytimeout = "VisibilityTimeout"

    public var description: String {
        return rawValue
    }
    
    public static let __default: QueueAttributeName = .all
}

/**
 Type definition for the QueueUrlList field.
 */
public typealias QueueUrlList = [String]

/**
 Type definition for the SendMessageBatchRequestEntryList field.
 */
public typealias SendMessageBatchRequestEntryList = [SendMessageBatchRequestEntry]

/**
 Type definition for the SendMessageBatchResultEntryList field.
 */
public typealias SendMessageBatchResultEntryList = [SendMessageBatchResultEntry]

/**
 Type definition for the StringList field.
 */
public typealias StringList = [String]

/**
 Type definition for the TagKey field.
 */
public typealias TagKey = String

/**
 Type definition for the TagKeyList field.
 */
public typealias TagKeyList = [TagKey]

/**
 Type definition for the TagMap field.
 */
public typealias TagMap = [TagKey: TagValue]

/**
 Type definition for the TagValue field.
 */
public typealias TagValue = String

/**
 Type definition for the Token field.
 */
public typealias Token = String
