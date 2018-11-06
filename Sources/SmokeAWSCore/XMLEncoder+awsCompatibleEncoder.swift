//
//  XMLEncoder+awsCompatibleEncoder.swift
//  SmokeAWSCore
//

import Foundation
import XMLCoding

private func createEncoder() -> XMLEncoder {
    let xmlEncoder = XMLEncoder()
    if #available(OSX 10.12, *) {
        xmlEncoder.dateEncodingStrategy = .iso8601
    }

    xmlEncoder.outputFormatting = .prettyPrinted
    
    return xmlEncoder
}

private let xmlEncoder = createEncoder()

public extension XMLEncoder {
    /// Return a AWS compatible XML Encoder
    public static var awsCompatibleEncoder: XMLEncoder {
        return xmlEncoder
    }
}
