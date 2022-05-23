// Copyright 2018-2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//
// CloudwatchJsonStandardErrorLogger.swift
// SmokeAWSCore
//

import Foundation
import Logging

private var standardError = FileHandle.standardError
private let sourcesSubString = "Sources/"

/**
 Implementation of the Logger protocol that emits logs as
 required to Standard error to be picked up by Cloudwatch logs.
 */
public struct CloudwatchJsonStandardErrorLogger: LogHandler {
    public var metadata: Logger.Metadata
    public var logLevel: Logger.Level
    
    private let jsonEncoder: JSONEncoder
    
    private init(minimumLogLevel: Logger.Level) {
        self.logLevel = minimumLogLevel
        self.metadata = [:]
        
        let theJsonEncoder = JSONEncoder()
        theJsonEncoder.outputFormatting = [.sortedKeys]
        
        self.jsonEncoder = theJsonEncoder
    }
    
    public subscript(metadataKey metadataKey: String) -> Logger.Metadata.Value? {
        get {
            return metadata[metadataKey]
        }
        set {
            metadata[metadataKey] = newValue
        }
    }
    
    /**
     Set the logger implementation of the LoggerAPI to this type.
     */
    public static func enableLogging(minimumLogLevel: Logger.Level = .info) {
        LoggingSystem.bootstrap { label in
            return CloudwatchJsonStandardErrorLogger(minimumLogLevel: minimumLogLevel)
        }
    }
    
    /**
     Set the logger implementation of the LoggerAPI to this type.
     */
    @available(swift, deprecated: 2.0, renamed: "enableLogging(minimumLogLevel:)")
    public static func enableLogging(minimumLoggerType: Logger.Level) {
        LoggingSystem.bootstrap { label in
            return CloudwatchJsonStandardErrorLogger(minimumLogLevel: minimumLoggerType)
        }
    }
    
    public func log(level: Logger.Level, message: Logger.Message,
                    metadata: Logger.Metadata?, file: String, function: String, line: UInt) {
        let shortFileName: String
        if let range = file.range(of: "Sources/") {
            let startIndex = file.index(range.lowerBound, offsetBy: sourcesSubString.count)
            shortFileName = String(file[startIndex...])
        } else {
            shortFileName = file
        }
        
        let metadataToUse: Logger.Metadata
        if let metadata = metadata {
            metadataToUse = self.metadata.merging(metadata) { (global, local) in local }
        } else {
            metadataToUse = self.metadata
        }
        
        var codableMetadata: [String: String] = [:]
        metadataToUse.forEach { (key, value) in
            codableMetadata[key] = value.description
        }
        
        codableMetadata["fileName"] = shortFileName
        codableMetadata["line"] = "\(line)"
        codableMetadata["function"] = function
        codableMetadata["level"] = level.rawValue
        codableMetadata["message"] = "\(message)"
        
        if let jsonData = try? self.jsonEncoder.encode(codableMetadata),
           let jsonMessage = String(data: jsonData, encoding: .utf8) {
            print(jsonMessage)
        }
    }
}
