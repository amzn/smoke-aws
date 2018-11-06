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
