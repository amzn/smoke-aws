// Copyright 2018-2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//
//  SmokeAWSOperationReportingConfiguration.swift
//  SmokeAWSCore
//

import Foundation

public struct SmokeAWSClientReportingConfiguration<OperationIdentifer: Hashable> {
    
    public enum MatchingOperations {
        case all
        case whitelist(Set<OperationIdentifer>)
        case blacklist(Set<OperationIdentifer>)
        case none
    }
        
    private let successCounterMatchingOperations: MatchingOperations
    private let failure5XXCounterMatchingOperations: MatchingOperations
    private let failure4XXCounterMatchingOperations: MatchingOperations
    private let retryCountRecorderMatchingOperations: MatchingOperations
    private let latencyTimerMatchingOperations: MatchingOperations
    
    public init(successCounterMatchingOperations: MatchingOperations,
                failure5XXCounterMatchingOperations: MatchingOperations,
                failure4XXCounterMatchingOperations: MatchingOperations,
                retryCountRecorderMatchingOperations: MatchingOperations,
                latencyTimerMatchingOperations: MatchingOperations) {
        self.successCounterMatchingOperations = successCounterMatchingOperations
        self.failure5XXCounterMatchingOperations = failure5XXCounterMatchingOperations
        self.failure4XXCounterMatchingOperations = failure4XXCounterMatchingOperations
        self.retryCountRecorderMatchingOperations = retryCountRecorderMatchingOperations
        self.latencyTimerMatchingOperations = latencyTimerMatchingOperations
    }
    
    public init(matchingOperations: MatchingOperations = .all) {
        self.successCounterMatchingOperations = matchingOperations
        self.failure5XXCounterMatchingOperations = matchingOperations
        self.failure4XXCounterMatchingOperations = matchingOperations
        self.retryCountRecorderMatchingOperations = matchingOperations
        self.latencyTimerMatchingOperations = matchingOperations
    }
    
    public func reportSuccessForOperation(_ operation: OperationIdentifer) -> Bool {
        return isMatchingOperation(operation, matchingOperations: successCounterMatchingOperations)
    }
    
    public func reportFailure5XXForOperation(_ operation: OperationIdentifer) -> Bool {
        return isMatchingOperation(operation, matchingOperations: failure5XXCounterMatchingOperations)
    }
    
    public func reportFailure4XXForOperation(_ operation: OperationIdentifer) -> Bool {
        return isMatchingOperation(operation, matchingOperations: failure4XXCounterMatchingOperations)
    }
    
    public func reportRetryCountForOperation(_ operation: OperationIdentifer) -> Bool {
        return isMatchingOperation(operation, matchingOperations: retryCountRecorderMatchingOperations)
    }
    
    public func reportLatencyForOperation(_ operation: OperationIdentifer) -> Bool {
        return isMatchingOperation(operation, matchingOperations: latencyTimerMatchingOperations)
    }
    
    private func isMatchingOperation(_ operation: OperationIdentifer, matchingOperations: MatchingOperations) -> Bool {
        switch matchingOperations {
        case .all:
            return true
        case .whitelist(let whitelist):
            return whitelist.contains(operation)
        case .blacklist(let blacklist):
            return !blacklist.contains(operation)
        case .none:
            return false
        }
    }
}
