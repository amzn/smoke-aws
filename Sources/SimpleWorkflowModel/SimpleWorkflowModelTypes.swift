// Copyright 2018-2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// swiftlint:disable type_body_length function_body_length generic_type_name cyclomatic_complexity
// -- Generated Code; do not edit --
//
// SimpleWorkflowModelTypes.swift
// SimpleWorkflowModel
//

import Foundation

/**
 Type definition for the ActivityId field.
 */
public typealias ActivityId = String

/**
 Enumeration restricting the values of the ActivityTaskTimeoutType field.
 */
public enum ActivityTaskTimeoutType: String, Codable, CustomStringConvertible {
    case heartbeat = "HEARTBEAT"
    case scheduleToClose = "SCHEDULE_TO_CLOSE"
    case scheduleToStart = "SCHEDULE_TO_START"
    case startToClose = "START_TO_CLOSE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ActivityTaskTimeoutType = .heartbeat
}

/**
 Type definition for the ActivityTypeInfoList field.
 */
public typealias ActivityTypeInfoList = [ActivityTypeInfo]

/**
 Type definition for the Arn field.
 */
public typealias Arn = String

/**
 Enumeration restricting the values of the CancelTimerFailedCause field.
 */
public enum CancelTimerFailedCause: String, Codable, CustomStringConvertible {
    case operationNotPermitted = "OPERATION_NOT_PERMITTED"
    case timerIdUnknown = "TIMER_ID_UNKNOWN"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CancelTimerFailedCause = .operationNotPermitted
}

/**
 Enumeration restricting the values of the CancelWorkflowExecutionFailedCause field.
 */
public enum CancelWorkflowExecutionFailedCause: String, Codable, CustomStringConvertible {
    case operationNotPermitted = "OPERATION_NOT_PERMITTED"
    case unhandledDecision = "UNHANDLED_DECISION"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CancelWorkflowExecutionFailedCause = .operationNotPermitted
}

/**
 Type definition for the Canceled field.
 */
public typealias Canceled = Bool

/**
 Type definition for the CauseMessage field.
 */
public typealias CauseMessage = String

/**
 Enumeration restricting the values of the ChildPolicy field.
 */
public enum ChildPolicy: String, Codable, CustomStringConvertible {
    case abandon = "ABANDON"
    case requestCancel = "REQUEST_CANCEL"
    case terminate = "TERMINATE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ChildPolicy = .abandon
}

/**
 Enumeration restricting the values of the CloseStatus field.
 */
public enum CloseStatus: String, Codable, CustomStringConvertible {
    case canceled = "CANCELED"
    case completed = "COMPLETED"
    case continuedAsNew = "CONTINUED_AS_NEW"
    case failed = "FAILED"
    case terminated = "TERMINATED"
    case timedOut = "TIMED_OUT"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CloseStatus = .canceled
}

/**
 Enumeration restricting the values of the CompleteWorkflowExecutionFailedCause field.
 */
public enum CompleteWorkflowExecutionFailedCause: String, Codable, CustomStringConvertible {
    case operationNotPermitted = "OPERATION_NOT_PERMITTED"
    case unhandledDecision = "UNHANDLED_DECISION"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CompleteWorkflowExecutionFailedCause = .operationNotPermitted
}

/**
 Enumeration restricting the values of the ContinueAsNewWorkflowExecutionFailedCause field.
 */
public enum ContinueAsNewWorkflowExecutionFailedCause: String, Codable, CustomStringConvertible {
    case continueAsNewWorkflowExecutionRateExceeded = "CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED"
    case defaultChildPolicyUndefined = "DEFAULT_CHILD_POLICY_UNDEFINED"
    case defaultExecutionStartToCloseTimeoutUndefined = "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED"
    case defaultTaskListUndefined = "DEFAULT_TASK_LIST_UNDEFINED"
    case defaultTaskStartToCloseTimeoutUndefined = "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED"
    case operationNotPermitted = "OPERATION_NOT_PERMITTED"
    case unhandledDecision = "UNHANDLED_DECISION"
    case workflowTypeDeprecated = "WORKFLOW_TYPE_DEPRECATED"
    case workflowTypeDoesNotExist = "WORKFLOW_TYPE_DOES_NOT_EXIST"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ContinueAsNewWorkflowExecutionFailedCause = .continueAsNewWorkflowExecutionRateExceeded
}

/**
 Type definition for the Count field.
 */
public typealias Count = Int

/**
 Type definition for the Data field.
 */
public typealias Data = String

/**
 Type definition for the DecisionList field.
 */
public typealias DecisionList = [Decision]

/**
 Enumeration restricting the values of the DecisionTaskTimeoutType field.
 */
public enum DecisionTaskTimeoutType: String, Codable, CustomStringConvertible {
    case startToClose = "START_TO_CLOSE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DecisionTaskTimeoutType = .startToClose
}

/**
 Enumeration restricting the values of the DecisionType field.
 */
public enum DecisionType: String, Codable, CustomStringConvertible {
    case canceltimer = "CancelTimer"
    case cancelworkflowexecution = "CancelWorkflowExecution"
    case completeworkflowexecution = "CompleteWorkflowExecution"
    case continueasnewworkflowexecution = "ContinueAsNewWorkflowExecution"
    case failworkflowexecution = "FailWorkflowExecution"
    case recordmarker = "RecordMarker"
    case requestcancelactivitytask = "RequestCancelActivityTask"
    case requestcancelexternalworkflowexecution = "RequestCancelExternalWorkflowExecution"
    case scheduleactivitytask = "ScheduleActivityTask"
    case schedulelambdafunction = "ScheduleLambdaFunction"
    case signalexternalworkflowexecution = "SignalExternalWorkflowExecution"
    case startchildworkflowexecution = "StartChildWorkflowExecution"
    case starttimer = "StartTimer"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DecisionType = .canceltimer
}

/**
 Type definition for the Description field.
 */
public typealias Description = String

/**
 Type definition for the DomainInfoList field.
 */
public typealias DomainInfoList = [DomainInfo]

/**
 Type definition for the DomainName field.
 */
public typealias DomainName = String

/**
 Type definition for the DurationInDays field.
 */
public typealias DurationInDays = String

/**
 Type definition for the DurationInSeconds field.
 */
public typealias DurationInSeconds = String

/**
 Type definition for the DurationInSecondsOptional field.
 */
public typealias DurationInSecondsOptional = String

/**
 Type definition for the ErrorMessage field.
 */
public typealias ErrorMessage = String

/**
 Type definition for the EventId field.
 */
public typealias EventId = Int

/**
 Enumeration restricting the values of the EventType field.
 */
public enum EventType: String, Codable, CustomStringConvertible {
    case activitytaskcancelrequested = "ActivityTaskCancelRequested"
    case activitytaskcanceled = "ActivityTaskCanceled"
    case activitytaskcompleted = "ActivityTaskCompleted"
    case activitytaskfailed = "ActivityTaskFailed"
    case activitytaskscheduled = "ActivityTaskScheduled"
    case activitytaskstarted = "ActivityTaskStarted"
    case activitytasktimedout = "ActivityTaskTimedOut"
    case canceltimerfailed = "CancelTimerFailed"
    case cancelworkflowexecutionfailed = "CancelWorkflowExecutionFailed"
    case childworkflowexecutioncanceled = "ChildWorkflowExecutionCanceled"
    case childworkflowexecutioncompleted = "ChildWorkflowExecutionCompleted"
    case childworkflowexecutionfailed = "ChildWorkflowExecutionFailed"
    case childworkflowexecutionstarted = "ChildWorkflowExecutionStarted"
    case childworkflowexecutionterminated = "ChildWorkflowExecutionTerminated"
    case childworkflowexecutiontimedout = "ChildWorkflowExecutionTimedOut"
    case completeworkflowexecutionfailed = "CompleteWorkflowExecutionFailed"
    case continueasnewworkflowexecutionfailed = "ContinueAsNewWorkflowExecutionFailed"
    case decisiontaskcompleted = "DecisionTaskCompleted"
    case decisiontaskscheduled = "DecisionTaskScheduled"
    case decisiontaskstarted = "DecisionTaskStarted"
    case decisiontasktimedout = "DecisionTaskTimedOut"
    case externalworkflowexecutioncancelrequested = "ExternalWorkflowExecutionCancelRequested"
    case externalworkflowexecutionsignaled = "ExternalWorkflowExecutionSignaled"
    case failworkflowexecutionfailed = "FailWorkflowExecutionFailed"
    case lambdafunctioncompleted = "LambdaFunctionCompleted"
    case lambdafunctionfailed = "LambdaFunctionFailed"
    case lambdafunctionscheduled = "LambdaFunctionScheduled"
    case lambdafunctionstarted = "LambdaFunctionStarted"
    case lambdafunctiontimedout = "LambdaFunctionTimedOut"
    case markerrecorded = "MarkerRecorded"
    case recordmarkerfailed = "RecordMarkerFailed"
    case requestcancelactivitytaskfailed = "RequestCancelActivityTaskFailed"
    case requestcancelexternalworkflowexecutionfailed = "RequestCancelExternalWorkflowExecutionFailed"
    case requestcancelexternalworkflowexecutioninitiated = "RequestCancelExternalWorkflowExecutionInitiated"
    case scheduleactivitytaskfailed = "ScheduleActivityTaskFailed"
    case schedulelambdafunctionfailed = "ScheduleLambdaFunctionFailed"
    case signalexternalworkflowexecutionfailed = "SignalExternalWorkflowExecutionFailed"
    case signalexternalworkflowexecutioninitiated = "SignalExternalWorkflowExecutionInitiated"
    case startchildworkflowexecutionfailed = "StartChildWorkflowExecutionFailed"
    case startchildworkflowexecutioninitiated = "StartChildWorkflowExecutionInitiated"
    case startlambdafunctionfailed = "StartLambdaFunctionFailed"
    case starttimerfailed = "StartTimerFailed"
    case timercanceled = "TimerCanceled"
    case timerfired = "TimerFired"
    case timerstarted = "TimerStarted"
    case workflowexecutioncancelrequested = "WorkflowExecutionCancelRequested"
    case workflowexecutioncanceled = "WorkflowExecutionCanceled"
    case workflowexecutioncompleted = "WorkflowExecutionCompleted"
    case workflowexecutioncontinuedasnew = "WorkflowExecutionContinuedAsNew"
    case workflowexecutionfailed = "WorkflowExecutionFailed"
    case workflowexecutionsignaled = "WorkflowExecutionSignaled"
    case workflowexecutionstarted = "WorkflowExecutionStarted"
    case workflowexecutionterminated = "WorkflowExecutionTerminated"
    case workflowexecutiontimedout = "WorkflowExecutionTimedOut"

    public var description: String {
        return rawValue
    }
    
    public static let __default: EventType = .activitytaskcancelrequested
}

/**
 Enumeration restricting the values of the ExecutionStatus field.
 */
public enum ExecutionStatus: String, Codable, CustomStringConvertible {
    case closed = "CLOSED"
    case open = "OPEN"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ExecutionStatus = .closed
}

/**
 Enumeration restricting the values of the FailWorkflowExecutionFailedCause field.
 */
public enum FailWorkflowExecutionFailedCause: String, Codable, CustomStringConvertible {
    case operationNotPermitted = "OPERATION_NOT_PERMITTED"
    case unhandledDecision = "UNHANDLED_DECISION"

    public var description: String {
        return rawValue
    }
    
    public static let __default: FailWorkflowExecutionFailedCause = .operationNotPermitted
}

/**
 Type definition for the FailureReason field.
 */
public typealias FailureReason = String

/**
 Type definition for the FunctionId field.
 */
public typealias FunctionId = String

/**
 Type definition for the FunctionInput field.
 */
public typealias FunctionInput = String

/**
 Type definition for the FunctionName field.
 */
public typealias FunctionName = String

/**
 Type definition for the HistoryEventList field.
 */
public typealias HistoryEventList = [HistoryEvent]

/**
 Type definition for the Identity field.
 */
public typealias Identity = String

/**
 Enumeration restricting the values of the LambdaFunctionTimeoutType field.
 */
public enum LambdaFunctionTimeoutType: String, Codable, CustomStringConvertible {
    case startToClose = "START_TO_CLOSE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: LambdaFunctionTimeoutType = .startToClose
}

/**
 Type definition for the LimitedData field.
 */
public typealias LimitedData = String

/**
 Type definition for the MarkerName field.
 */
public typealias MarkerName = String

/**
 Type definition for the Name field.
 */
public typealias Name = String

/**
 Type definition for the OpenDecisionTasksCount field.
 */
public typealias OpenDecisionTasksCount = Int

/**
 Type definition for the PageSize field.
 */
public typealias PageSize = Int

/**
 Type definition for the PageToken field.
 */
public typealias PageToken = String

/**
 Enumeration restricting the values of the RecordMarkerFailedCause field.
 */
public enum RecordMarkerFailedCause: String, Codable, CustomStringConvertible {
    case operationNotPermitted = "OPERATION_NOT_PERMITTED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: RecordMarkerFailedCause = .operationNotPermitted
}

/**
 Enumeration restricting the values of the RegistrationStatus field.
 */
public enum RegistrationStatus: String, Codable, CustomStringConvertible {
    case deprecated = "DEPRECATED"
    case registered = "REGISTERED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: RegistrationStatus = .deprecated
}

/**
 Enumeration restricting the values of the RequestCancelActivityTaskFailedCause field.
 */
public enum RequestCancelActivityTaskFailedCause: String, Codable, CustomStringConvertible {
    case activityIdUnknown = "ACTIVITY_ID_UNKNOWN"
    case operationNotPermitted = "OPERATION_NOT_PERMITTED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: RequestCancelActivityTaskFailedCause = .activityIdUnknown
}

/**
 Enumeration restricting the values of the RequestCancelExternalWorkflowExecutionFailedCause field.
 */
public enum RequestCancelExternalWorkflowExecutionFailedCause: String, Codable, CustomStringConvertible {
    case operationNotPermitted = "OPERATION_NOT_PERMITTED"
    case requestCancelExternalWorkflowExecutionRateExceeded = "REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED"
    case unknownExternalWorkflowExecution = "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION"

    public var description: String {
        return rawValue
    }
    
    public static let __default: RequestCancelExternalWorkflowExecutionFailedCause = .operationNotPermitted
}

/**
 Type definition for the ResourceTagKey field.
 */
public typealias ResourceTagKey = String

/**
 Type definition for the ResourceTagKeyList field.
 */
public typealias ResourceTagKeyList = [ResourceTagKey]

/**
 Type definition for the ResourceTagList field.
 */
public typealias ResourceTagList = [ResourceTag]

/**
 Type definition for the ResourceTagValue field.
 */
public typealias ResourceTagValue = String

/**
 Type definition for the ReverseOrder field.
 */
public typealias ReverseOrder = Bool

/**
 Enumeration restricting the values of the ScheduleActivityTaskFailedCause field.
 */
public enum ScheduleActivityTaskFailedCause: String, Codable, CustomStringConvertible {
    case activityCreationRateExceeded = "ACTIVITY_CREATION_RATE_EXCEEDED"
    case activityIdAlreadyInUse = "ACTIVITY_ID_ALREADY_IN_USE"
    case activityTypeDeprecated = "ACTIVITY_TYPE_DEPRECATED"
    case activityTypeDoesNotExist = "ACTIVITY_TYPE_DOES_NOT_EXIST"
    case defaultHeartbeatTimeoutUndefined = "DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED"
    case defaultScheduleToCloseTimeoutUndefined = "DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED"
    case defaultScheduleToStartTimeoutUndefined = "DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED"
    case defaultStartToCloseTimeoutUndefined = "DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED"
    case defaultTaskListUndefined = "DEFAULT_TASK_LIST_UNDEFINED"
    case openActivitiesLimitExceeded = "OPEN_ACTIVITIES_LIMIT_EXCEEDED"
    case operationNotPermitted = "OPERATION_NOT_PERMITTED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ScheduleActivityTaskFailedCause = .activityCreationRateExceeded
}

/**
 Enumeration restricting the values of the ScheduleLambdaFunctionFailedCause field.
 */
public enum ScheduleLambdaFunctionFailedCause: String, Codable, CustomStringConvertible {
    case idAlreadyInUse = "ID_ALREADY_IN_USE"
    case lambdaFunctionCreationRateExceeded = "LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED"
    case lambdaServiceNotAvailableInRegion = "LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION"
    case openLambdaFunctionsLimitExceeded = "OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ScheduleLambdaFunctionFailedCause = .idAlreadyInUse
}

/**
 Enumeration restricting the values of the SignalExternalWorkflowExecutionFailedCause field.
 */
public enum SignalExternalWorkflowExecutionFailedCause: String, Codable, CustomStringConvertible {
    case operationNotPermitted = "OPERATION_NOT_PERMITTED"
    case signalExternalWorkflowExecutionRateExceeded = "SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED"
    case unknownExternalWorkflowExecution = "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION"

    public var description: String {
        return rawValue
    }
    
    public static let __default: SignalExternalWorkflowExecutionFailedCause = .operationNotPermitted
}

/**
 Type definition for the SignalName field.
 */
public typealias SignalName = String

/**
 Type definition for the StartAtPreviousStartedEvent field.
 */
public typealias StartAtPreviousStartedEvent = Bool

/**
 Enumeration restricting the values of the StartChildWorkflowExecutionFailedCause field.
 */
public enum StartChildWorkflowExecutionFailedCause: String, Codable, CustomStringConvertible {
    case childCreationRateExceeded = "CHILD_CREATION_RATE_EXCEEDED"
    case defaultChildPolicyUndefined = "DEFAULT_CHILD_POLICY_UNDEFINED"
    case defaultExecutionStartToCloseTimeoutUndefined = "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED"
    case defaultTaskListUndefined = "DEFAULT_TASK_LIST_UNDEFINED"
    case defaultTaskStartToCloseTimeoutUndefined = "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED"
    case openChildrenLimitExceeded = "OPEN_CHILDREN_LIMIT_EXCEEDED"
    case openWorkflowsLimitExceeded = "OPEN_WORKFLOWS_LIMIT_EXCEEDED"
    case operationNotPermitted = "OPERATION_NOT_PERMITTED"
    case workflowAlreadyRunning = "WORKFLOW_ALREADY_RUNNING"
    case workflowTypeDeprecated = "WORKFLOW_TYPE_DEPRECATED"
    case workflowTypeDoesNotExist = "WORKFLOW_TYPE_DOES_NOT_EXIST"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StartChildWorkflowExecutionFailedCause = .childCreationRateExceeded
}

/**
 Enumeration restricting the values of the StartLambdaFunctionFailedCause field.
 */
public enum StartLambdaFunctionFailedCause: String, Codable, CustomStringConvertible {
    case assumeRoleFailed = "ASSUME_ROLE_FAILED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StartLambdaFunctionFailedCause = .assumeRoleFailed
}

/**
 Enumeration restricting the values of the StartTimerFailedCause field.
 */
public enum StartTimerFailedCause: String, Codable, CustomStringConvertible {
    case openTimersLimitExceeded = "OPEN_TIMERS_LIMIT_EXCEEDED"
    case operationNotPermitted = "OPERATION_NOT_PERMITTED"
    case timerCreationRateExceeded = "TIMER_CREATION_RATE_EXCEEDED"
    case timerIdAlreadyInUse = "TIMER_ID_ALREADY_IN_USE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StartTimerFailedCause = .openTimersLimitExceeded
}

/**
 Type definition for the Tag field.
 */
public typealias Tag = String

/**
 Type definition for the TagList field.
 */
public typealias TagList = [Tag]

/**
 Type definition for the TaskPriority field.
 */
public typealias TaskPriority = String

/**
 Type definition for the TaskToken field.
 */
public typealias TaskToken = String

/**
 Type definition for the TerminateReason field.
 */
public typealias TerminateReason = String

/**
 Type definition for the TimerId field.
 */
public typealias TimerId = String

/**
 Type definition for the Timestamp field.
 */
public typealias Timestamp = Double

/**
 Type definition for the Truncated field.
 */
public typealias Truncated = Bool

/**
 Type definition for the Version field.
 */
public typealias Version = String

/**
 Type definition for the VersionOptional field.
 */
public typealias VersionOptional = String

/**
 Enumeration restricting the values of the WorkflowExecutionCancelRequestedCause field.
 */
public enum WorkflowExecutionCancelRequestedCause: String, Codable, CustomStringConvertible {
    case childPolicyApplied = "CHILD_POLICY_APPLIED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: WorkflowExecutionCancelRequestedCause = .childPolicyApplied
}

/**
 Type definition for the WorkflowExecutionInfoList field.
 */
public typealias WorkflowExecutionInfoList = [WorkflowExecutionInfo]

/**
 Enumeration restricting the values of the WorkflowExecutionTerminatedCause field.
 */
public enum WorkflowExecutionTerminatedCause: String, Codable, CustomStringConvertible {
    case childPolicyApplied = "CHILD_POLICY_APPLIED"
    case eventLimitExceeded = "EVENT_LIMIT_EXCEEDED"
    case operatorInitiated = "OPERATOR_INITIATED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: WorkflowExecutionTerminatedCause = .childPolicyApplied
}

/**
 Enumeration restricting the values of the WorkflowExecutionTimeoutType field.
 */
public enum WorkflowExecutionTimeoutType: String, Codable, CustomStringConvertible {
    case startToClose = "START_TO_CLOSE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: WorkflowExecutionTimeoutType = .startToClose
}

/**
 Type definition for the WorkflowId field.
 */
public typealias WorkflowId = String

/**
 Type definition for the WorkflowRunId field.
 */
public typealias WorkflowRunId = String

/**
 Type definition for the WorkflowRunIdOptional field.
 */
public typealias WorkflowRunIdOptional = String

/**
 Type definition for the WorkflowTypeInfoList field.
 */
public typealias WorkflowTypeInfoList = [WorkflowTypeInfo]

/**
 Validation for the ActivityId field.
*/
extension SimpleWorkflowModel.ActivityId {
    public func validateAsActivityId() throws {
        if self.count < 1 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to ActivityId violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to ActivityId violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Arn field.
*/
extension SimpleWorkflowModel.Arn {
    public func validateAsArn() throws {
        if self.count < 1 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to Arn violated the minimum length constraint.")
        }

        if self.count > 1600 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to Arn violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the CauseMessage field.
*/
extension SimpleWorkflowModel.CauseMessage {
    public func validateAsCauseMessage() throws {

        if self.count > 1728 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to CauseMessage violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Count field.
*/
extension SimpleWorkflowModel.Count {
    public func validateAsCount() throws {
        if self < 0 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to Count violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the Data field.
*/
extension SimpleWorkflowModel.Data {
    public func validateAsData() throws {

        if self.count > 32768 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to Data violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Description field.
*/
extension SimpleWorkflowModel.Description {
    public func validateAsDescription() throws {

        if self.count > 1024 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to Description violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the DomainName field.
*/
extension SimpleWorkflowModel.DomainName {
    public func validateAsDomainName() throws {
        if self.count < 1 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to DomainName violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to DomainName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the DurationInDays field.
*/
extension SimpleWorkflowModel.DurationInDays {
    public func validateAsDurationInDays() throws {
        if self.count < 1 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to DurationInDays violated the minimum length constraint.")
        }

        if self.count > 8 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to DurationInDays violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the DurationInSeconds field.
*/
extension SimpleWorkflowModel.DurationInSeconds {
    public func validateAsDurationInSeconds() throws {
        if self.count < 1 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to DurationInSeconds violated the minimum length constraint.")
        }

        if self.count > 8 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to DurationInSeconds violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the DurationInSecondsOptional field.
*/
extension SimpleWorkflowModel.DurationInSecondsOptional {
    public func validateAsDurationInSecondsOptional() throws {

        if self.count > 8 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to DurationInSecondsOptional violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the FailureReason field.
*/
extension SimpleWorkflowModel.FailureReason {
    public func validateAsFailureReason() throws {

        if self.count > 256 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to FailureReason violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the FunctionId field.
*/
extension SimpleWorkflowModel.FunctionId {
    public func validateAsFunctionId() throws {
        if self.count < 1 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to FunctionId violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to FunctionId violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the FunctionInput field.
*/
extension SimpleWorkflowModel.FunctionInput {
    public func validateAsFunctionInput() throws {
        if self.count < 0 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to FunctionInput violated the minimum length constraint.")
        }

        if self.count > 32768 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to FunctionInput violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the FunctionName field.
*/
extension SimpleWorkflowModel.FunctionName {
    public func validateAsFunctionName() throws {
        if self.count < 1 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to FunctionName violated the minimum length constraint.")
        }

        if self.count > 64 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to FunctionName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Identity field.
*/
extension SimpleWorkflowModel.Identity {
    public func validateAsIdentity() throws {

        if self.count > 256 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to Identity violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the LimitedData field.
*/
extension SimpleWorkflowModel.LimitedData {
    public func validateAsLimitedData() throws {

        if self.count > 2048 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to LimitedData violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the MarkerName field.
*/
extension SimpleWorkflowModel.MarkerName {
    public func validateAsMarkerName() throws {
        if self.count < 1 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to MarkerName violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to MarkerName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Name field.
*/
extension SimpleWorkflowModel.Name {
    public func validateAsName() throws {
        if self.count < 1 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to Name violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to Name violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the OpenDecisionTasksCount field.
*/
extension SimpleWorkflowModel.OpenDecisionTasksCount {
    public func validateAsOpenDecisionTasksCount() throws {
        if self < 0 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to OpenDecisionTasksCount violated the minimum range constraint.")
        }

        if self > 1 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to OpenDecisionTasksCount violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the PageSize field.
*/
extension SimpleWorkflowModel.PageSize {
    public func validateAsPageSize() throws {
        if self < 0 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to PageSize violated the minimum range constraint.")
        }

        if self > 1000 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to PageSize violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the PageToken field.
*/
extension SimpleWorkflowModel.PageToken {
    public func validateAsPageToken() throws {

        if self.count > 2048 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to PageToken violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ResourceTagKey field.
*/
extension SimpleWorkflowModel.ResourceTagKey {
    public func validateAsResourceTagKey() throws {
        if self.count < 1 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to ResourceTagKey violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to ResourceTagKey violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ResourceTagValue field.
*/
extension SimpleWorkflowModel.ResourceTagValue {
    public func validateAsResourceTagValue() throws {

        if self.count > 256 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to ResourceTagValue violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the SignalName field.
*/
extension SimpleWorkflowModel.SignalName {
    public func validateAsSignalName() throws {
        if self.count < 1 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to SignalName violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to SignalName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Tag field.
*/
extension SimpleWorkflowModel.Tag {
    public func validateAsTag() throws {
        if self.count < 0 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to Tag violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to Tag violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TagList field.
*/
extension Array where Element == SimpleWorkflowModel.Tag {
    public func validateAsTagList() throws {

        if self.count > 5 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to TagList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TaskToken field.
*/
extension SimpleWorkflowModel.TaskToken {
    public func validateAsTaskToken() throws {
        if self.count < 1 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to TaskToken violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to TaskToken violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TerminateReason field.
*/
extension SimpleWorkflowModel.TerminateReason {
    public func validateAsTerminateReason() throws {

        if self.count > 256 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to TerminateReason violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TimerId field.
*/
extension SimpleWorkflowModel.TimerId {
    public func validateAsTimerId() throws {
        if self.count < 1 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to TimerId violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to TimerId violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Version field.
*/
extension SimpleWorkflowModel.Version {
    public func validateAsVersion() throws {
        if self.count < 1 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to Version violated the minimum length constraint.")
        }

        if self.count > 64 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to Version violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the VersionOptional field.
*/
extension SimpleWorkflowModel.VersionOptional {
    public func validateAsVersionOptional() throws {

        if self.count > 64 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to VersionOptional violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the WorkflowId field.
*/
extension SimpleWorkflowModel.WorkflowId {
    public func validateAsWorkflowId() throws {
        if self.count < 1 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to WorkflowId violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to WorkflowId violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the WorkflowRunId field.
*/
extension SimpleWorkflowModel.WorkflowRunId {
    public func validateAsWorkflowRunId() throws {
        if self.count < 1 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to WorkflowRunId violated the minimum length constraint.")
        }

        if self.count > 64 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to WorkflowRunId violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the WorkflowRunIdOptional field.
*/
extension SimpleWorkflowModel.WorkflowRunIdOptional {
    public func validateAsWorkflowRunIdOptional() throws {

        if self.count > 64 {
            throw SimpleWorkflowError.validationError(reason: "The provided value to WorkflowRunIdOptional violated the maximum length constraint.")
        }
    }
}
