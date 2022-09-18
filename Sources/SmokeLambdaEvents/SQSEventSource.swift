//
//  SQSEventSource.swift
//  SmokeLambdaEvents
//

import Foundation
import AWSLambdaEvents

// https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html

public protocol SQSTypedMessageProtocol {
    associatedtype BodyType
    
    var messageId: String { get }
    var receiptHandle: String { get }
    var body: BodyType { get }
    var md5OfBody: String { get }
    var md5OfMessageAttributes: String? { get }
    var attributes: [String: String] { get }
    var messageAttributes: [String: AWSLambdaEvents.SQS.Message.Attribute] { get }
    var eventSourceArn: String { get }
    var eventSource: String { get }
    var awsRegion: AWSLambdaEvents.AWSRegion { get }
}

public enum SQSEventSource {
    // Event type where the body field has been decoded into a Codable type
    public typealias TypedJSONBodyEvent<BodyType: Decodable> = TypedEvent<JSONStringifiedDecoder<BodyType>>
    
    // Event type where the body field remains a String
    public typealias Event = TypedEvent<StringStringifiedDecoder>
    
    // Event type that allows for a custom body decoder
    public struct TypedEvent<BodyDecoder: StringifiedDecoder>: Decodable {
        public let records: [TypedMessage<BodyDecoder>]

        enum CodingKeys: String, CodingKey {
            case records = "Records"
        }
    }

    public struct TypedMessage<BodyDecoder: StringifiedDecoder>: SQSTypedMessageProtocol {
        public typealias BodyType = BodyDecoder.BodyType
        
        public let messageId: String
        public let receiptHandle: String
        @StringifiedCoding<BodyDecoder>
        public var body: BodyType
        public let md5OfBody: String
        public let md5OfMessageAttributes: String?
        public let attributes: [String: String]
        public let messageAttributes: [String: AWSLambdaEvents.SQS.Message.Attribute]
        public let eventSourceArn: String
        public let eventSource: String
        public let awsRegion: AWSLambdaEvents.AWSRegion
    }
}

extension SQSEventSource.TypedMessage: Decodable {
    enum CodingKeys: String, CodingKey {
        case messageId
        case receiptHandle
        case body
        case md5OfBody
        case md5OfMessageAttributes
        case attributes
        case messageAttributes
        case eventSourceArn = "eventSourceARN"
        case eventSource
        case awsRegion
    }
}

// https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#sqs-batchfailurereporting-syntax
public struct SQSBatchResponse: Codable {
    public let batchItemFailures: [BatchItemFailure]

    public init(batchItemFailures: [BatchItemFailure]) {
        self.batchItemFailures = batchItemFailures
    }
}

public struct BatchItemFailure: Codable {
    public let itemIdentifier: String

    public init(itemIdentifier: String) {
        self.itemIdentifier = itemIdentifier
    }
}
