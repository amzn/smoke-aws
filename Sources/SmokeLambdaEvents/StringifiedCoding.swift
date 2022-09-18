//
//  StringifiedCoding.swift
//  SmokeLambdaEvents
//

import Foundation

@propertyWrapper
public struct StringifiedCoding<BodyDecoder: StringifiedDecoder>: Decodable {
    public let wrappedValue: BodyDecoder.BodyType

    public init(wrappedValue: BodyDecoder.BodyType) {
        self.wrappedValue = wrappedValue
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawBody = try container.decode(String.self)
                
        self.wrappedValue = try BodyDecoder.decodeFrom(utf8View: rawBody.utf8)
    }
}
