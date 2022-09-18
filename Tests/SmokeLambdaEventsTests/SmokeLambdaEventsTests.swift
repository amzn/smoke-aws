//
//  SmokeLambdaEventsTests.swift
//  SmokeLambdaEventsTests
//

import XCTest
@testable import SmokeLambdaEvents
import AWSLambdaEvents

struct TestInput: Codable, Equatable {
    let fieldOne: String
    let fieldTwo: Int
}

struct TestEvent<RecordType: Codable>: Codable {
    let records: [RecordType]
    
    enum CodingKeys: String, CodingKey {
        case records = "Records"
    }
}

struct TestSQSMessage: Codable {
    let messageId: String
    let receiptHandle: String
    var body: String
    let md5OfBody: String
    let md5OfMessageAttributes: String?
    let attributes: [String: String]
    let messageAttributes: [String: String]
    let eventSourceArn: String
    let eventSource: String
    let awsRegion: String
    
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

struct TestSNSFanoutMessage: Codable {
    let signature: String
    let messageId: String
    let type: String
    let topicArn: String
    let messageAttributes: [String: String]?
    let signatureVersion: String
    let timestamp: String
    let signingCertURL: String
    let message: String
    let unsubscribeUrl: String
    let subject: String
    
    enum CodingKeys: String, CodingKey {
        case signature = "Signature"
        case messageId = "MessageId"
        case type = "Type"
        case topicArn = "TopicArn"
        case messageAttributes = "MessageAttributes"
        case signatureVersion = "SignatureVersion"
        case timestamp = "Timestamp"
        case signingCertURL = "SigningCertURL"
        case message = "Message"
        case unsubscribeUrl = "UnsubscribeURL"
        case subject = "Subject"
    }
}

struct TestSNSRecord: Codable {
    let eventVersion: String
    let eventSubscriptionArn: String
    let eventSource: String
    let sns: TestSNSMessage
    
    enum CodingKeys: String, CodingKey {
        case eventVersion = "EventVersion"
        case eventSubscriptionArn = "EventSubscriptionArn"
        case eventSource = "EventSource"
        case sns = "Sns"
    }
}

struct TestSNSMessage: Codable {
    let signature: String
    let messageId: String
    let type: String
    let topicArn: String
    let messageAttributes: [String: String]?
    let signatureVersion: String
    let timestamp: String
    let signingCertURL: String
    let message: String
    let unsubscribeUrl: String
    let subject: String
    
    enum CodingKeys: String, CodingKey {
        case signature = "Signature"
        case messageId = "MessageId"
        case type = "Type"
        case topicArn = "TopicArn"
        case messageAttributes = "MessageAttributes"
        case signatureVersion = "SignatureVersion"
        case timestamp = "Timestamp"
        case signingCertURL = "SigningCertUrl"
        case message = "Message"
        case unsubscribeUrl = "UnsubscribeUrl"
        case subject = "Subject"
    }
}

final class SmokeLambdaEventsTests: XCTestCase {
    let fieldOne = "FieldOne"
    let fieldTwo = 42
    
    func testSNSEventSource() throws {
        let encoder = JSONEncoder()
        encoder.outputFormatting = [.prettyPrinted]
        
        let message = TestInput(fieldOne: fieldOne, fieldTwo: fieldTwo)
        let messageData = try encoder.encode(message)
        let messageString = String(data: messageData, encoding: .utf8)!
        
        let messageWrapper = TestSNSMessage(signature: "EXAMPLEnTrFPa3...",
                                            messageId: "63a3f6b6-d533-4a47-aef9-fcf5cf758c76",
                                            type: "Notification",
                                            topicArn: "arn:aws:sns:us-west-2:123456789012:MyTopic",
                                            messageAttributes: nil,
                                            signatureVersion: "1",
                                            timestamp: "2012-03-29T05:12:16.901Z",
                                            signingCertURL: "...",
                                            message: messageString,
                                            unsubscribeUrl: "...",
                                            subject: "TestInvoke")
        
        let input = TestEvent<TestSNSRecord>(records: [
            TestSNSRecord(eventVersion: "1.0",
                          eventSubscriptionArn: "arn:aws:sns:us-east-2:123456789012:sns-lambda:21be56ed-a058-49f5-8c98-aedd2564c486",
                          eventSource: "aws:sns",
                          sns: messageWrapper)
        ])
        
        let expected = TestInput(fieldOne: fieldOne, fieldTwo: fieldTwo)
        
        let inputData = try encoder.encode(input)
        let decodedInput = try! JSONDecoder().decode(SNSEventSource.TypedJSONBodyEvent<TestInput>.self, from: inputData)
        
        XCTAssertEqual(decodedInput.records[0].sns.message, expected)
    }
    
    func testSNSFanoutSQSEventSource() throws {
        let encoder = JSONEncoder()
        encoder.outputFormatting = [.prettyPrinted]
        
        let message = TestInput(fieldOne: fieldOne, fieldTwo: fieldTwo)
        let messageData = try encoder.encode(message)
        let messageString = String(data: messageData, encoding: .utf8)!
        
        let body = TestSNSFanoutMessage(signature: "EXAMPLEnTrFPa3...",
                                        messageId: "63a3f6b6-d533-4a47-aef9-fcf5cf758c76",
                                        type: "Notification",
                                        topicArn: "arn:aws:sns:us-west-2:123456789012:MyTopic",
                                        messageAttributes: nil,
                                        signatureVersion: "1",
                                        timestamp: "2012-03-29T05:12:16.901Z",
                                        signingCertURL: "...",
                                        message: messageString,
                                        unsubscribeUrl: "...",
                                        subject: "Testing publish to subscribed queues")
        let bodyData = try encoder.encode(body)
        let bodyString = String(data: bodyData, encoding: .utf8)!
        
        let input = TestEvent<TestSQSMessage>(records: [
            TestSQSMessage(messageId: "059f36b4-87a3-44ab-83d2-661975830a7d",
                           receiptHandle: "AQEBwJnKyrHigUMZj6rYigCgxlaS3SLy0a...",
                           body: bodyString,
                           md5OfBody: "e4e68fb7bd0e697a0ae8f1bb342846b3",
                           md5OfMessageAttributes: nil,
                           attributes: [
                            "ApproximateReceiveCount": "1",
                            "SentTimestamp": "1545082649183",
                            "SenderId": "AIDAIENQZJOLO23YVJ4VO",
                            "ApproximateFirstReceiveTimestamp": "1545082649185"],
                           messageAttributes: [:],
                           eventSourceArn: "arn:aws:sqs:us-east-2:123456789012:my-queue",
                           eventSource: "aws:sqs",
                           awsRegion: "us-east-2")
        ])
        
        let expected = TestInput(fieldOne: fieldOne, fieldTwo: fieldTwo)
        
        let inputData = try encoder.encode(input)
        let decodedInput = try! JSONDecoder().decode(SQSEventSource.TypedJSONBodySNSFanoutEvent<TestInput>.self, from: inputData)
        
        XCTAssertEqual(decodedInput.records[0].body.message, expected)
    }
    
    func testSQSEventSource() throws {
        let encoder = JSONEncoder()
        encoder.outputFormatting = [.prettyPrinted]
        
        let body = TestInput(fieldOne: fieldOne, fieldTwo: fieldTwo)
        let bodyData = try encoder.encode(body)
        let bodyString = String(data: bodyData, encoding: .utf8)!
        
        let input = TestEvent<TestSQSMessage>(records: [
            TestSQSMessage(messageId: "059f36b4-87a3-44ab-83d2-661975830a7d",
                           receiptHandle: "AQEBwJnKyrHigUMZj6rYigCgxlaS3SLy0a...",
                           body: bodyString,
                           md5OfBody: "e4e68fb7bd0e697a0ae8f1bb342846b3",
                           md5OfMessageAttributes: nil,
                           attributes: [
                            "ApproximateReceiveCount": "1",
                            "SentTimestamp": "1545082649183",
                            "SenderId": "AIDAIENQZJOLO23YVJ4VO",
                            "ApproximateFirstReceiveTimestamp": "1545082649185"],
                           messageAttributes: [:],
                           eventSourceArn: "arn:aws:sqs:us-east-2:123456789012:my-queue",
                           eventSource: "aws:sqs",
                           awsRegion: "us-east-2")
        ])
        
        let expected = TestInput(fieldOne: fieldOne, fieldTwo: fieldTwo)
        
        let inputData = try encoder.encode(input)
        let decodedInput = try! JSONDecoder().decode(SQSEventSource.TypedJSONBodyEvent<TestInput>.self, from: inputData)
        
        XCTAssertEqual(decodedInput.records[0].body, expected)
    }
}
