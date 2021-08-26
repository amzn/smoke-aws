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
    internal static let s3EndpointRegex = #"^https?:\/\/(.+\.)?s3[.-][a-z0-9-]+\."#

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
        } else if self.starts(with: S3ObjectIdentifer.httpsPrefix) || self.starts(with: S3ObjectIdentifer.httpPrefix) {
            return asS3ObjectIdentifierFromHttpOrHttps()
        }

        return nil
    }

    /// Tries to parse the bucket and key names from an HTTP or HTTPS URL.
    private func asS3ObjectIdentifierFromHttpOrHttps() -> S3ObjectIdentifer? {
        guard let url = URL(string: self) else {
            return nil
        }

        let urlPath = url.path.dropFirst()

        guard let regex = try? NSRegularExpression(pattern: S3ObjectIdentifer.s3EndpointRegex, options: []) else {
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
            return S3ObjectIdentifer(bucketName: bucketName, keyPath: keyName)
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
