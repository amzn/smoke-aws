//
//  SNSEventSource.swift
//  SmokeLambdaEvents
//

import Foundation
import AWSLambdaEvents

// https://docs.aws.amazon.com/lambda/latest/dg/with-sns.html

public protocol SNSTypedMessageProtocol {
    associatedtype MessageType
    
    var signature: String { get }
    var messageId: String { get }
    var type: String { get }
    var topicArn: String { get }
    var messageAttributes: [String: SNS.Message.Attribute]? { get }
    var signatureVersion: String { get }

    var timestamp: Date { get }
    var signingCertUrl: String { get }
    var message: MessageType { get }
    var unsubscribeUrl: String { get }
    var subject: String? { get }
}

public enum SNSEventSource {
    // Event type where the message field has been decoded into a Codable type
    public typealias TypedJSONBodyEvent<MessageType: Decodable> = TypedEvent<JSONStringifiedDecoder<MessageType>>
    
    // Event type where the message field remains a String
    public typealias Event = TypedEvent<StringStringifiedDecoder>
    
    // Event type that allows for a custom body decoder
    public struct TypedEvent<BodyDecoder: StringifiedDecoder>: Decodable {
        public let records: [TypedRecord<BodyDecoder>]

        enum CodingKeys: String, CodingKey {
            case records = "Records"
        }
    }
    
    public struct TypedRecord<BodyDecoder: StringifiedDecoder>: Decodable {
        public let eventVersion: String
        public let eventSubscriptionArn: String
        public let eventSource: String
        public let sns: TypedMessage<BodyDecoder>

        public enum CodingKeys: String, CodingKey {
            case eventVersion = "EventVersion"
            case eventSubscriptionArn = "EventSubscriptionArn"
            case eventSource = "EventSource"
            case sns = "Sns"
        }
    }

    public struct TypedMessage<BodyDecoder: StringifiedDecoder>: SNSTypedMessageProtocol {
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

extension SNSEventSource.TypedMessage: Decodable {
    enum CodingKeys: String, CodingKey {
        case signature = "Signature"
        case messageId = "MessageId"
        case type = "Type"
        case topicArn = "TopicArn"
        case messageAttributes = "MessageAttributes"
        case signatureVersion = "SignatureVersion"
        case timestamp = "Timestamp"
        case signingCertUrl = "SigningCertUrl"
        case message = "Message"
        case unsubscribeUrl = "UnsubscribeUrl"
        case subject = "Subject"
    }
}
