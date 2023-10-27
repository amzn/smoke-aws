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
// EventBridgeSchedulerOperationsReporting.swift
// EventBridgeSchedulerClient
//

import Foundation
import SmokeAWSCore
import EventBridgeSchedulerModel

/**
 Operation reporting for the EventBridgeSchedulerModel.
 */
public struct EventBridgeSchedulerOperationsReporting {
    public let createSchedule: StandardSmokeAWSOperationReporting<EventBridgeSchedulerModelOperations>
    public let createScheduleGroup: StandardSmokeAWSOperationReporting<EventBridgeSchedulerModelOperations>
    public let deleteSchedule: StandardSmokeAWSOperationReporting<EventBridgeSchedulerModelOperations>
    public let deleteScheduleGroup: StandardSmokeAWSOperationReporting<EventBridgeSchedulerModelOperations>
    public let getSchedule: StandardSmokeAWSOperationReporting<EventBridgeSchedulerModelOperations>
    public let getScheduleGroup: StandardSmokeAWSOperationReporting<EventBridgeSchedulerModelOperations>
    public let listScheduleGroups: StandardSmokeAWSOperationReporting<EventBridgeSchedulerModelOperations>
    public let listSchedules: StandardSmokeAWSOperationReporting<EventBridgeSchedulerModelOperations>
    public let listTagsForResource: StandardSmokeAWSOperationReporting<EventBridgeSchedulerModelOperations>
    public let tagResource: StandardSmokeAWSOperationReporting<EventBridgeSchedulerModelOperations>
    public let untagResource: StandardSmokeAWSOperationReporting<EventBridgeSchedulerModelOperations>
    public let updateSchedule: StandardSmokeAWSOperationReporting<EventBridgeSchedulerModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<EventBridgeSchedulerModelOperations>) {
        self.createSchedule = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createSchedule, configuration: reportingConfiguration)
        self.createScheduleGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createScheduleGroup, configuration: reportingConfiguration)
        self.deleteSchedule = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteSchedule, configuration: reportingConfiguration)
        self.deleteScheduleGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteScheduleGroup, configuration: reportingConfiguration)
        self.getSchedule = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getSchedule, configuration: reportingConfiguration)
        self.getScheduleGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getScheduleGroup, configuration: reportingConfiguration)
        self.listScheduleGroups = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listScheduleGroups, configuration: reportingConfiguration)
        self.listSchedules = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listSchedules, configuration: reportingConfiguration)
        self.listTagsForResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTagsForResource, configuration: reportingConfiguration)
        self.tagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .tagResource, configuration: reportingConfiguration)
        self.untagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .untagResource, configuration: reportingConfiguration)
        self.updateSchedule = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateSchedule, configuration: reportingConfiguration)
    }
}
