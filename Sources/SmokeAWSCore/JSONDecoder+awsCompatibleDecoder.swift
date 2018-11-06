//
//  JSONDecoder+awsCompatibleDecoder.swift
//  SmokeAWSCore
//

import Foundation

private func createDecoder() -> JSONDecoder {
    let jsonDecoder = JSONDecoder()
    if #available(OSX 10.12, *) {
        jsonDecoder.dateDecodingStrategy = .iso8601
    }
    
    return jsonDecoder
}

private let jsonDecoder = createDecoder()

public extension JSONDecoder {
    /// Return a AWS compatible JSON Decoder
    public static var awsCompatibleDecoder: JSONDecoder {
        return jsonDecoder
    }
}
