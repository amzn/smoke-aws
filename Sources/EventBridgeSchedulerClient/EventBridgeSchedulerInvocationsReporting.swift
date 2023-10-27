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
// EventBridgeSchedulerInvocationsReporting.swift
// EventBridgeSchedulerClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import EventBridgeSchedulerModel

/**
 Invocations reporting for the EventBridgeSchedulerModel.
 */
public struct EventBridgeSchedulerInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting> {
    public let createSchedule: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createScheduleGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteSchedule: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteScheduleGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getSchedule: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getScheduleGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listScheduleGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listSchedules: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listTagsForResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let tagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let untagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateSchedule: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: EventBridgeSchedulerOperationsReporting) {
        self.createSchedule = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createSchedule)
        self.createScheduleGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createScheduleGroup)
        self.deleteSchedule = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteSchedule)
        self.deleteScheduleGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteScheduleGroup)
        self.getSchedule = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getSchedule)
        self.getScheduleGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getScheduleGroup)
        self.listScheduleGroups = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listScheduleGroups)
        self.listSchedules = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listSchedules)
        self.listTagsForResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTagsForResource)
        self.tagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.tagResource)
        self.untagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.untagResource)
        self.updateSchedule = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateSchedule)
    }
}
