//
//  JSONDecoder+awsCompatibleEncoder.swift
//  SmokeAWSCore
//

import Foundation

private func createEncoder() -> JSONEncoder {
    let jsonEncoder = JSONEncoder()
    if #available(OSX 10.12, *) {
        jsonEncoder.dateEncodingStrategy = .iso8601
    }

    jsonEncoder.outputFormatting = .prettyPrinted
    
    return jsonEncoder
}

private let jsonEncoder = createEncoder()

public extension JSONEncoder {
    /// Return a AWS compatible JSON Encoder
    public static var awsCompatibleEncoder: JSONEncoder {
        return jsonEncoder
    }
}
