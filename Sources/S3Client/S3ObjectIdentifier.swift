//
//  S3ObjectIdentifier.swift
//  S3Client
//

import Foundation
import S3Model

/**
 An identifier for an S3 object, specifying the name of its bucket
 and its key path.
 */
public struct S3ObjectIdentifier: Equatable {
    internal static let s3Prefix = "s3://"
    internal static let httpsPrefix = "https://"
    internal static let httpPrefix = "http://"
    internal static let s3EndpointRegex = #"^https?:\/\/(.+\.)?s3[.-][a-z0-9-]+\."#
    
    public let bucketName: String
    public let keyPath: String
    
    public init(bucketName: String,
                keyPath: String) {
        self.bucketName = bucketName
        self.keyPath = keyPath
    }

    // Returns the key path of the parent S3 "folder" containing the object, WITH trailing '/'.
    // For example, for an object at path "a/b/c/d.ext", the return value will be "a/b/c/".
    @available(macOS 13.0, iOS 16.0, watchOS 9.0, tvOS 16.0, *)
    public var parentPath: String {
        get throws {
            let pathComponents = try url.pathComponents
            if pathComponents.count <= 1 {
                return ""
            } else {
                return String((pathComponents.dropLast().joined(separator: "/").trimmingSuffix(try Regex("/+")) + "/").trimmingPrefix(try Regex("/+")))
            }
        }
    }

    // Returns the "file name" of the object within its S3 "folder". If the key path is a directory path
    // (e.g. ending with '/'), the return value will be empty.
    public var fileName: String {
        get throws {
            if try url.hasDirectoryPath {
                return ""
            } else {
                return try url.pathComponents.last ?? ""
            }
        }
    }

    private var url: URL {
        get throws {
            let url = URL(string: "\(Self.httpsPrefix)\(bucketName).s3.amazonaws.com/\(keyPath)")
            guard let url else {
                throw S3Error.validationError(reason: "Cannot initialize URL for bucket \(bucketName) " +
                "and key \(keyPath).")
            }

            return url
        }
    }
}

extension String {
    @available(macOS 13.0, iOS 16.0, watchOS 9.0, tvOS 16.0, *)
    func trimmingSuffix(_ regex: some RegexComponent) -> String {
        String(String(self.reversed()).trimmingPrefix(regex).reversed())
    }
}

// To keep backwards compatibility after fixing the typo
public typealias S3ObjectIdentifer = S3ObjectIdentifier