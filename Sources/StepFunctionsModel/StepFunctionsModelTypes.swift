// Copyright 2018-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// -- Generated Code; do not edit --
//
// StepFunctionsModelTypes.swift
// StepFunctionsModel
//

import Foundation

/**
 Type definition for the ActivityList field.
 */
public typealias ActivityList = [ActivityListItem]

/**
 Type definition for the Arn field.
 */
public typealias Arn = String

/**
 Type definition for the ConnectorParameters field.
 */
public typealias ConnectorParameters = String

/**
 Type definition for the Definition field.
 */
public typealias Definition = String

/**
 Type definition for the ErrorMessage field.
 */
public typealias ErrorMessage = String

/**
 Type definition for the EventId field.
 */
public typealias EventId = Int

/**
 Type definition for the ExecutionList field.
 */
public typealias ExecutionList = [ExecutionListItem]

/**
 Enumeration restricting the values of the ExecutionStatus field.
 */
public enum ExecutionStatus: String, Codable, CustomStringConvertible {
    case aborted = "ABORTED"
    case failed = "FAILED"
    case running = "RUNNING"
    case succeeded = "SUCCEEDED"
    case timedOut = "TIMED_OUT"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ExecutionStatus = .aborted
}

/**
 Type definition for the HistoryEventList field.
 */
public typealias HistoryEventList = [HistoryEvent]

/**
 Enumeration restricting the values of the HistoryEventType field.
 */
public enum HistoryEventType: String, Codable, CustomStringConvertible {
    case activityFailed = "ActivityFailed"
    case activityScheduleFailed = "ActivityScheduleFailed"
    case activityScheduled = "ActivityScheduled"
    case activityStarted = "ActivityStarted"
    case activitySucceeded = "ActivitySucceeded"
    case activityTimedOut = "ActivityTimedOut"
    case choiceStateEntered = "ChoiceStateEntered"
    case choiceStateExited = "ChoiceStateExited"
    case executionAborted = "ExecutionAborted"
    case executionFailed = "ExecutionFailed"
    case executionStarted = "ExecutionStarted"
    case executionSucceeded = "ExecutionSucceeded"
    case executionTimedOut = "ExecutionTimedOut"
    case failStateEntered = "FailStateEntered"
    case lambdaFunctionFailed = "LambdaFunctionFailed"
    case lambdaFunctionScheduleFailed = "LambdaFunctionScheduleFailed"
    case lambdaFunctionScheduled = "LambdaFunctionScheduled"
    case lambdaFunctionStartFailed = "LambdaFunctionStartFailed"
    case lambdaFunctionStarted = "LambdaFunctionStarted"
    case lambdaFunctionSucceeded = "LambdaFunctionSucceeded"
    case lambdaFunctionTimedOut = "LambdaFunctionTimedOut"
    case parallelStateAborted = "ParallelStateAborted"
    case parallelStateEntered = "ParallelStateEntered"
    case parallelStateExited = "ParallelStateExited"
    case parallelStateFailed = "ParallelStateFailed"
    case parallelStateStarted = "ParallelStateStarted"
    case parallelStateSucceeded = "ParallelStateSucceeded"
    case passStateEntered = "PassStateEntered"
    case passStateExited = "PassStateExited"
    case succeedStateEntered = "SucceedStateEntered"
    case succeedStateExited = "SucceedStateExited"
    case taskFailed = "TaskFailed"
    case taskScheduled = "TaskScheduled"
    case taskStartFailed = "TaskStartFailed"
    case taskStarted = "TaskStarted"
    case taskStateAborted = "TaskStateAborted"
    case taskStateEntered = "TaskStateEntered"
    case taskStateExited = "TaskStateExited"
    case taskSubmitFailed = "TaskSubmitFailed"
    case taskSubmitted = "TaskSubmitted"
    case taskSucceeded = "TaskSucceeded"
    case taskTimedOut = "TaskTimedOut"
    case waitStateAborted = "WaitStateAborted"
    case waitStateEntered = "WaitStateEntered"
    case waitStateExited = "WaitStateExited"

    public var description: String {
        return rawValue
    }
    
    public static let __default: HistoryEventType = .activityFailed
}

/**
 Type definition for the Identity field.
 */
public typealias Identity = String

/**
 Type definition for the Name field.
 */
public typealias Name = String

/**
 Type definition for the PageSize field.
 */
public typealias PageSize = Int

/**
 Type definition for the PageToken field.
 */
public typealias PageToken = String

/**
 Type definition for the ReverseOrder field.
 */
public typealias ReverseOrder = Bool

/**
 Type definition for the SensitiveCause field.
 */
public typealias SensitiveCause = String

/**
 Type definition for the SensitiveData field.
 */
public typealias SensitiveData = String

/**
 Type definition for the SensitiveDataJobInput field.
 */
public typealias SensitiveDataJobInput = String

/**
 Type definition for the SensitiveError field.
 */
public typealias SensitiveError = String

/**
 Type definition for the StateMachineList field.
 */
public typealias StateMachineList = [StateMachineListItem]

/**
 Enumeration restricting the values of the StateMachineStatus field.
 */
public enum StateMachineStatus: String, Codable, CustomStringConvertible {
    case active = "ACTIVE"
    case deleting = "DELETING"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StateMachineStatus = .active
}

/**
 Type definition for the TagKey field.
 */
public typealias TagKey = String

/**
 Type definition for the TagKeyList field.
 */
public typealias TagKeyList = [TagKey]

/**
 Type definition for the TagList field.
 */
public typealias TagList = [Tag]

/**
 Type definition for the TagValue field.
 */
public typealias TagValue = String

/**
 Type definition for the TaskToken field.
 */
public typealias TaskToken = String

/**
 Type definition for the TimeoutInSeconds field.
 */
public typealias TimeoutInSeconds = Int

/**
 Type definition for the Timestamp field.
 */
public typealias Timestamp = Double

/**
 Validation for the Arn field.
*/
extension StepFunctionsModel.Arn {
    public func validateAsArn() throws {
        if self.count < 1 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to Arn violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to Arn violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ConnectorParameters field.
*/
extension StepFunctionsModel.ConnectorParameters {
    public func validateAsConnectorParameters() throws {
        if self.count < 0 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to ConnectorParameters violated the minimum length constraint.")
        }

        if self.count > 32768 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to ConnectorParameters violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Definition field.
*/
extension StepFunctionsModel.Definition {
    public func validateAsDefinition() throws {
        if self.count < 1 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to Definition violated the minimum length constraint.")
        }

        if self.count > 1048576 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to Definition violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Identity field.
*/
extension StepFunctionsModel.Identity {
    public func validateAsIdentity() throws {

        if self.count > 256 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to Identity violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Name field.
*/
extension StepFunctionsModel.Name {
    public func validateAsName() throws {
        if self.count < 1 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to Name violated the minimum length constraint.")
        }

        if self.count > 80 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to Name violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the PageSize field.
*/
extension StepFunctionsModel.PageSize {
    public func validateAsPageSize() throws {
        if self < 0 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to PageSize violated the minimum range constraint.")
        }

        if self > 1000 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to PageSize violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the PageToken field.
*/
extension StepFunctionsModel.PageToken {
    public func validateAsPageToken() throws {
        if self.count < 1 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to PageToken violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to PageToken violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the SensitiveCause field.
*/
extension StepFunctionsModel.SensitiveCause {
    public func validateAsSensitiveCause() throws {
        if self.count < 0 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to SensitiveCause violated the minimum length constraint.")
        }

        if self.count > 32768 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to SensitiveCause violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the SensitiveData field.
*/
extension StepFunctionsModel.SensitiveData {
    public func validateAsSensitiveData() throws {

        if self.count > 32768 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to SensitiveData violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the SensitiveDataJobInput field.
*/
extension StepFunctionsModel.SensitiveDataJobInput {
    public func validateAsSensitiveDataJobInput() throws {

        if self.count > 65536 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to SensitiveDataJobInput violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the SensitiveError field.
*/
extension StepFunctionsModel.SensitiveError {
    public func validateAsSensitiveError() throws {
        if self.count < 0 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to SensitiveError violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to SensitiveError violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TagKey field.
*/
extension StepFunctionsModel.TagKey {
    public func validateAsTagKey() throws {
        if self.count < 1 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to TagKey violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to TagKey violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TagValue field.
*/
extension StepFunctionsModel.TagValue {
    public func validateAsTagValue() throws {
        if self.count < 0 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to TagValue violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to TagValue violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TaskToken field.
*/
extension StepFunctionsModel.TaskToken {
    public func validateAsTaskToken() throws {
        if self.count < 1 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to TaskToken violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw StepFunctionsCodingError.validationError(reason: "The provided value to TaskToken violated the maximum length constraint.")
        }
    }
}
