//
//  SmokeAWSError.swift
//  SmokeAWSCore
//

import Foundation

/**
 Errors that can thrown as part of the SmokeAWS library.
 */
public enum SmokeAWSError: Error {
    /// There was an error during validation of input or output
    case validationError(reason: String)
    case invalidRequest(String)
    case badResponse(String)
    case unknownError(String)
    case connectionError(String)
}
