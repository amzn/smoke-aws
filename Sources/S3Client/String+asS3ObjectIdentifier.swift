//
//  String+asS3ObjectIdentifier.swift
//  S3Client
//

import Foundation

/**
 An identifier for an S3 object, specifying the name of its bucket
 and its key path.
 */
public struct S3ObjectIdentifer: Equatable {
    internal static let s3Prefix = "s3://"
    
    public let bucketName: String
    public let keyPath: String
    
    public init(bucketName: String,
                keyPath: String) {
        self.bucketName = bucketName
        self.keyPath = keyPath
    }
}

public extension String {
    /**
     If possible creates an S3ObjectIdentifer instance from this string,
     seperating the bucket name and key path.
 
     Will return nil if this string is not of the form-
       s3://bucketName/the/key/path
     
     This would return S3ObjectIdentifer(bucketName: "bucketName",
                                         keyPath: "/the/key/path")
     */
    public func asS3ObjectIdentifier() -> S3ObjectIdentifer? {
        guard self.starts(with: S3ObjectIdentifer.s3Prefix) else {
            return nil
        }
        
        let droppedPrefix = self.dropFirst(S3ObjectIdentifer.s3Prefix.count)
        
        #if swift(>=4.2)
        guard let bucketKeySeperatorIndex = droppedPrefix.firstIndex(of: "/") else {
            return nil
        }
        #else
        guard let bucketKeySeperatorIndex = droppedPrefix.index(of: "/") else {
            return nil
        }
        #endif
        
        let bucketName = String(droppedPrefix[..<bucketKeySeperatorIndex])
        let keyPath = String(droppedPrefix[bucketKeySeperatorIndex...])
        
        return S3ObjectIdentifer(bucketName: bucketName, keyPath: keyPath)
    }
}
