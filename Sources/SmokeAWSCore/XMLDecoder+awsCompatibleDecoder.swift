//
//  XMLDecoder+awsCompatibleDecoder.swift
//  SmokeAWSCore
//

import Foundation
import XMLCoding

private func createDecoder() -> XMLDecoder {
    let xmlDecoder = XMLDecoder()
    if #available(OSX 10.12, *) {
        xmlDecoder.dateDecodingStrategy = .iso8601
    }
    
    return xmlDecoder
}

private let xmlDecoder = createDecoder()

public extension XMLDecoder {
    /// Return a AWS compatible XML Decoder
    public static var awsCompatibleDecoder: XMLDecoder {
        return xmlDecoder
    }
}
