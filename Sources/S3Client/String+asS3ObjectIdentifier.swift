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
    internal static let httpsPrefix = "https://"
    internal static let httpPrefix = "http://"
    
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
    func asS3ObjectIdentifier() -> S3ObjectIdentifer? {
        if self.starts(with: S3ObjectIdentifer.s3Prefix) {
            // get the url without the scheme - of the form {bucket}/{key+}
            let nonPrefixedUrl = self.dropFirst(S3ObjectIdentifer.s3Prefix.count)
            
            return asS3ObjectIdentifierFromNonPrefixedUrl(nonPrefixedUrl: nonPrefixedUrl)
        } else if self.starts(with: S3ObjectIdentifer.httpsPrefix) {
            // get the url without the scheme - of the form {host}/{bucket}/{key+}
            let droppedPrefix = self.dropFirst(S3ObjectIdentifer.httpsPrefix.count)
            
            // get the index of the separator between the host and the bucket
            guard let nextUrlSeparator = getIndexOfNextUrlSeparator(url: droppedPrefix) else {
                return nil
            }
            
            let bucketStartIndex = droppedPrefix.index(nextUrlSeparator,
                                                               offsetBy: 1)
            // get the url without the scheme or the host -
            // of the form {bucket}/{key+}
            let nonPrefixedUrl = droppedPrefix[bucketStartIndex...]
            
            return asS3ObjectIdentifierFromNonPrefixedUrl(nonPrefixedUrl: nonPrefixedUrl)
        } else if self.starts(with: S3ObjectIdentifer.httpPrefix) {
            // get the url without the scheme - of the form {host}/{bucket}/{key+}
            let droppedPrefix = self.dropFirst(S3ObjectIdentifer.httpPrefix.count)
            
            // get the index of the separator between the host and the bucket
            guard let nextUrlSeparator = getIndexOfNextUrlSeparator(url: droppedPrefix) else {
                return nil
            }
            
            let bucketStartIndex = droppedPrefix.index(nextUrlSeparator,
                                                               offsetBy: 1)
            // get the url without the scheme or the host -
            // of the form {bucket}/{key+}
            let nonPrefixedUrl = droppedPrefix[bucketStartIndex...]
            
            return asS3ObjectIdentifierFromNonPrefixedUrl(nonPrefixedUrl: nonPrefixedUrl)
        }
        
        return nil
    }
    
    private func getIndexOfNextUrlSeparator(url: Substring) -> String.Index? {
        #if swift(>=4.2)
        return url.firstIndex(of: "/")
        #else
        return url.index(of: "/")
        #endif
    }
    
    /// Spilts a url of the form {bucket}/{key+} into a S3ObjectIdentifer if possible
    private func asS3ObjectIdentifierFromNonPrefixedUrl(nonPrefixedUrl: Substring) -> S3ObjectIdentifer? {
        guard let nextUrlSeparator = getIndexOfNextUrlSeparator(url: nonPrefixedUrl) else {
            return nil
        }
        
        let bucketKeySeperatorIndex = nonPrefixedUrl.index(nextUrlSeparator,
                                                               offsetBy: 1)
        let bucketName = String(nonPrefixedUrl[..<nextUrlSeparator])
        let keyPath = String(nonPrefixedUrl[bucketKeySeperatorIndex...])
        
        return S3ObjectIdentifer(bucketName: bucketName, keyPath: keyPath)
    }
}
