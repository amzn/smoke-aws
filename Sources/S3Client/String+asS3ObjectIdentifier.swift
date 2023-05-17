//
//  String+asS3ObjectIdentifier.swift
//  S3Client
//

import Foundation

public extension String {
    /**
     If possible creates an S3ObjectIdentifier instance from this string,
     separating the bucket name and key path.
 
     Will return nil if this string is not of the form-
       s3://bucketName/the/key/path
     
     This would return S3ObjectIdentifier(bucketName: "bucketName",
                                          keyPath: "/the/key/path")
     */
    func asS3ObjectIdentifier() -> S3ObjectIdentifier? {
        if self.starts(with: S3ObjectIdentifier.s3Prefix) {
            // get the url without the scheme - of the form {bucket}/{key+}
            let nonPrefixedUrl = self.dropFirst(S3ObjectIdentifier.s3Prefix.count)
            
            return asS3ObjectIdentifierFromNonPrefixedUrl(nonPrefixedUrl: nonPrefixedUrl)
        } else if self.starts(with: S3ObjectIdentifier.httpsPrefix) || self.starts(with: S3ObjectIdentifier.httpPrefix) {
            return asS3ObjectIdentifierFromHttpOrHttps()
        }
        
        return nil
    }
    
    /// Tries to parse the bucket and key names from an HTTP or HTTPS URL.
    private func asS3ObjectIdentifierFromHttpOrHttps() -> S3ObjectIdentifier? {
        guard let url = URL(string: self) else {
            return nil
        }
        
        let urlPath = url.path.dropFirst()
        
        guard let regex = try? NSRegularExpression(pattern: S3ObjectIdentifier.s3EndpointRegex, options: []) else {
            return nil
        }
        
        let searchRange = NSRange(self.startIndex..<self.endIndex, in: self)
        let match = regex.firstMatch(in: self, options: [], range: searchRange)
        if let match = match,
            match.numberOfRanges > 0,
            let bucketRange = Range(match.range(at: 1), in: self),
            !bucketRange.isEmpty,
            self[bucketRange].count > 1 {
            // If the capture group for the regex is not empty, the URL is the virtual hosted style, for example:
            // https://bucket.s3.amazonaws.com/key
            // The capture group is the bucket name (with trailing dot) and the URL path is the key name
            let bucketName = String(self[bucketRange].dropLast())
            let keyName = String(urlPath)
            return S3ObjectIdentifier(bucketName: bucketName, keyPath: keyName)
        }
        
        // If the regex capture group is empty, the URL is in the path style, for example:
        // https://s3.amazonaws.com/bucket/key
        // Both the bucket and key names are in the URL path
        return asS3ObjectIdentifierFromNonPrefixedUrl(nonPrefixedUrl: Substring(urlPath))
    }
    
    private func getIndexOfNextUrlSeparator(url: Substring) -> String.Index? {
        #if swift(>=4.2)
        return url.firstIndex(of: "/")
        #else
        return url.index(of: "/")
        #endif
    }
    
    /// Splits a url of the form {bucket}/{key+} into a S3ObjectIdentifier if possible
    private func asS3ObjectIdentifierFromNonPrefixedUrl(nonPrefixedUrl: Substring) -> S3ObjectIdentifier? {
        guard let nextUrlSeparator = getIndexOfNextUrlSeparator(url: nonPrefixedUrl) else {
            return nil
        }
        
        let bucketKeySeparatorIndex = nonPrefixedUrl.index(nextUrlSeparator,
                                                               offsetBy: 1)
        let bucketName = String(nonPrefixedUrl[..<nextUrlSeparator])
        let keyPath = String(nonPrefixedUrl[bucketKeySeparatorIndex...])
        
        return S3ObjectIdentifier(bucketName: bucketName, keyPath: keyPath)
    }

    // To keep backwards compatibility after fixing the typo
    func asS3ObjectIdentifer() -> S3ObjectIdentifer? {
        asS3ObjectIdentifier()
    }
}
