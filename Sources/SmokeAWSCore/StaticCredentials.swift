//
//  StaticCredentials.swift
//  SmokeAWSCore
//

import Foundation

/**
 An implementation of the Credentials that provides static
 credentials provided by an initializer.
 */
public struct StaticCredentials : Credentials {
    public let accessKeyId: String
    public let secretAccessKey: String
    public let sessionToken: String?
    
    /**
     Initializer that provides the static credentials.
 
     - Parameters:
        - accessKeyId: The access key id to use for these credentials.
        - secretAccessKey: The secret access key for these credentials.
        - sessionToken: The session token - if any - for these credentials.
     */
    public init(accessKeyId: String,
                secretAccessKey: String,
                sessionToken: String?) {
        self.accessKeyId = accessKeyId
        self.secretAccessKey = secretAccessKey
        self.sessionToken = sessionToken
    }
}

/**
 Conforms StaticCredentials to the CredentialsProvider protocol, always providing
 itself.
 */
extension StaticCredentials : CredentialsProvider {
    public var credentials: Credentials {
        return self
    }
}
