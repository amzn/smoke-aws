//
//  StringifiedDecoder.swift
//  SmokeLambdaEvents
//

import Foundation

public protocol StringifiedDecoder {
    associatedtype BodyType
    
    static func decodeFrom(utf8View: String.UTF8View) throws -> BodyType
}

public enum JSONStringifiedDecoder<BodyType: Decodable>: StringifiedDecoder {
    public static func decodeFrom(utf8View: String.UTF8View) throws -> BodyType {
        let data = Data(utf8View)
        
        return try JSONDecoder().decode(BodyType.self, from: data)
    }
}

public enum StringStringifiedDecoder: StringifiedDecoder {
    public typealias BodyType = String
    
    public static func decodeFrom(utf8View: String.UTF8View) throws -> String {
        return String(utf8View)
    }
}
