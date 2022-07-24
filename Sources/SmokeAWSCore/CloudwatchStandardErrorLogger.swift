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
// CloudwatchStandardErrorLogger.swift
// SmokeAWSCore
//

import Foundation
import Logging

private let sourcesSubString = "Sources/"

/**
 Implementation of the Logger protocol that emits logs as
 required to Standard error to be picked up by Cloudwatch logs.
 */
public struct CloudwatchStandardErrorLogger: LogHandler {
    public var metadata: Logger.Metadata
    public var logLevel: Logger.Level
    
    private let stream: TextOutputStream
    
    private init(minimumLogLevel: Logger.Level) {
        self.logLevel = minimumLogLevel
        self.metadata = [:]
        self.stream = StdioOutputStream.stderr
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
            return CloudwatchStandardErrorLogger(minimumLogLevel: minimumLogLevel)
        }
    }
    
    /**
     Set the logger implementation of the LoggerAPI to this type.
     */
    @available(swift, deprecated: 2.0, renamed: "enableLogging(minimumLogLevel:)")
    public static func enableLogging(minimumLoggerType: Logger.Level) {
        LoggingSystem.bootstrap { label in
            return CloudwatchStandardErrorLogger(minimumLogLevel: minimumLoggerType)
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
        
        let levelString = "\(level)".uppercased()
        
        let metadataAsTags = metadataToUse.map { (key, value) -> String in "\(key):\(value.description)" }
        
        let tagString: String
        if !metadataAsTags.isEmpty {
            tagString = "[\(metadataAsTags.joined(separator: "|"))] "
        } else {
            tagString = ""
        }
        
        var stream = self.stream
        stream.write("\(shortFileName):\(line):\(function) [\(levelString)] \(tagString)\(message)\n")
    }
}

extension FileHandle: TextOutputStream {
    public func write(_ string: String) {
        guard let data = string.data(using: .utf8) else { return }
        self.write(data)
    }
}
