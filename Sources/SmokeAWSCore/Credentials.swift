//
//  Credentials.swift
//  SmokeAWSCore
//

import Foundation

/**
 Protocol for retrieving credentials for a request. Implementations must ensure that
 separate calls to retrieve each of the credentials attributes, retrieve credentials
 that are consistent with each other.
 */
public protocol Credentials {
    /// The access key id for these credentials.
    var accessKeyId: String { get }
    /// The secret access key for these credentials.
    var secretAccessKey: String { get }
    /// The session token - if any - for these credentials.
    var sessionToken: String? { get }
}
