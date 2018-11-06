//
//  CredentialsProvider.swift
//  SmokeAWSCore
//

import Foundation

/**
  Protocol for providing a Credentials instance for a request. Instances of this protocol
  that are passed to an AWS Client are used throughout the lifetime of that client. Each
  request retrieves a new Credentials instance that is used for that request. For credential
  rotation, the CredentialProvider implementation should manage swapping out an immutable
  Credentials instance. This will ensure that consistent credentials are used within a
  request and rebetween requests the credentials will be rotated.
  */
public protocol CredentialsProvider {
    /// The current credentials.
    var credentials: Credentials { get }
}
