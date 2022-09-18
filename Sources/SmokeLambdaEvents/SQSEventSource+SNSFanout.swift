//
//  SQSEventSource+SNSFanout.swift
//  SmokeLambdaEvents
//

import Foundation
import AWSLambdaEvents

// https://docs.aws.amazon.com/sns/latest/dg/sns-sqs-as-subscriber.html

public extension SQSEventSource {
    typealias TypedJSONBodySNSFanoutMessage<BodyType: Decodable> = TypedSNSFanoutMessage<JSONStringifiedDecoder<BodyType>>
    typealias StringBodySNSFanoutMessage = TypedSNSFanoutMessage<StringStringifiedDecoder>
    
    // Event type where the message field has been decoded into a Codable type from a JSON-formatted string
    typealias TypedJSONBodySNSFanoutEvent<BodyType: Decodable> = TypedEvent<JSONStringifiedDecoder<TypedJSONBodySNSFanoutMessage<BodyType>>>
    
    // Event type where the message field has been decoded into a Codable type from a string that can be decoded by `DecoderType`
    typealias TypedSNSFanoutEvent<DecoderType: StringifiedDecoder> = TypedEvent<DecoderType> where DecoderType.BodyType: SNSTypedMessageProtocol
    
    // Event type where the message field remains a String
    typealias SNSFanoutEvent = TypedEvent<JSONStringifiedDecoder<StringBodySNSFanoutMessage>>
    
    struct TypedSNSFanoutMessage<BodyDecoder: StringifiedDecoder>: SNSTypedMessageProtocol {
        public typealias MessageType = BodyDecoder.BodyType

        public let signature: String
        public let messageId: String
        public let type: String
        public let topicArn: String
        public let messageAttributes: [String: SNS.Message.Attribute]?
        public let signatureVersion: String

        @ISO8601WithFractionalSecondsCoding
        public var timestamp: Date
        public let signingCertUrl: String
        @StringifiedCoding<BodyDecoder>
        public var message: MessageType
        public let unsubscribeUrl: String
        public let subject: String?
    }
}

extension SQSEventSource.TypedSNSFanoutMessage: Decodable {
    // Note: These differ from SNSEventSource.TypedMessage in the
    // captialization required for `signingCertUrl` and `unsubscribeUrl`
    enum CodingKeys: String, CodingKey {
        case signature = "Signature"
        case messageId = "MessageId"
        case type = "Type"
        case topicArn = "TopicArn"
        case messageAttributes = "MessageAttributes"
        case signatureVersion = "SignatureVersion"
        case timestamp = "Timestamp"
        case signingCertUrl = "SigningCertURL"
        case message = "Message"
        case unsubscribeUrl = "UnsubscribeURL"
        case subject = "Subject"
    }
}
