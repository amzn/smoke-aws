// Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
import LoggerAPI

private var standardError = FileHandle.standardError
private let sourcesSubString = "Sources/"

/**
 Implementation of the Logger protocol that emits logs as
 required to Standard error to be picked up by Cloudwatch logs.
 */
public struct CloudwatchStandardErrorLogger: Logger {
    let minimumLoggerType: LoggerMessageType
    
    /**
     Set the logger implementation of the LoggerAPI to this type.
     */
    public static func enableLogging(minimumLoggerType: LoggerMessageType = .info) {
        Log.logger = CloudwatchStandardErrorLogger(minimumLoggerType: minimumLoggerType)
    }
    
    public func log(_ type: LoggerMessageType, msg: String,
                    functionName: String, lineNum: Int,
                    fileName: String) {
        let shortFileName: String
        if let range = fileName.range(of: "Sources/") {
            let startIndex = fileName.index(range.lowerBound, offsetBy: sourcesSubString.count)
            shortFileName = String(fileName[startIndex...])
        } else {
            shortFileName = fileName
        }
        
        print("\(shortFileName):\(lineNum):\(functionName) \(msg)",
            to: &standardError)
    }
    
    public func isLogging(_ level: LoggerMessageType) -> Bool {
        return level.rawValue >= minimumLoggerType.rawValue
    }
}

extension FileHandle: TextOutputStream {
    public func write(_ string: String) {
        guard let data = string.data(using: .utf8) else { return }
        self.write(data)
    }
}
