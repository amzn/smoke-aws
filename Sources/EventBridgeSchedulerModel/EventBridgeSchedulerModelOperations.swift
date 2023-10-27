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
// EventBridgeSchedulerModelOperations.swift
// EventBridgeSchedulerModel
//

import Foundation

/**
 Operation enumeration for the EventBridgeSchedulerModel.
 */
public enum EventBridgeSchedulerModelOperations: String, Hashable, CustomStringConvertible {
    case createSchedule = "CreateSchedule"
    case createScheduleGroup = "CreateScheduleGroup"
    case deleteSchedule = "DeleteSchedule"
    case deleteScheduleGroup = "DeleteScheduleGroup"
    case getSchedule = "GetSchedule"
    case getScheduleGroup = "GetScheduleGroup"
    case listScheduleGroups = "ListScheduleGroups"
    case listSchedules = "ListSchedules"
    case listTagsForResource = "ListTagsForResource"
    case tagResource = "TagResource"
    case untagResource = "UntagResource"
    case updateSchedule = "UpdateSchedule"

    public var description: String {
        return rawValue
    }

    public var operationPath: String {
        switch self {
        case .createSchedule:
            return "/schedules/{Name}"
        case .createScheduleGroup:
            return "/schedule-groups/{Name}"
        case .deleteSchedule:
            return "/schedules/{Name}"
        case .deleteScheduleGroup:
            return "/schedule-groups/{Name}"
        case .getSchedule:
            return "/schedules/{Name}"
        case .getScheduleGroup:
            return "/schedule-groups/{Name}"
        case .listScheduleGroups:
            return "/schedule-groups"
        case .listSchedules:
            return "/schedules"
        case .listTagsForResource:
            return "/tags/{ResourceArn}"
        case .tagResource:
            return "/tags/{ResourceArn}"
        case .untagResource:
            return "/tags/{ResourceArn}"
        case .updateSchedule:
            return "/schedules/{Name}"
        }
    }
}

/**
 Structure to encode the path input for the CreateSchedule
 operation.
 */
public struct CreateScheduleOperationInputPath: Codable, Equatable {
    public var name: Name

    public init(name: Name) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
    }

    public func validate() throws {
        try name.validateAsName()
    }
}

public extension CreateScheduleInput {
    func asEventBridgeSchedulerModelCreateScheduleOperationInputPath() -> CreateScheduleOperationInputPath {
        return CreateScheduleOperationInputPath(
            name: name)
    }
}

/**
 Structure to encode the body input for the CreateSchedule
 operation.
 */
public struct CreateScheduleOperationInputBody: Codable, Equatable {
    public var clientToken: ClientToken?
    public var description: Description?
    public var endDate: EndDate?
    public var flexibleTimeWindow: FlexibleTimeWindow
    public var groupName: ScheduleGroupName?
    public var kmsKeyArn: KmsKeyArn?
    public var scheduleExpression: ScheduleExpression
    public var scheduleExpressionTimezone: ScheduleExpressionTimezone?
    public var startDate: StartDate?
    public var state: ScheduleState?
    public var target: Target

    public init(clientToken: ClientToken? = nil,
                description: Description? = nil,
                endDate: EndDate? = nil,
                flexibleTimeWindow: FlexibleTimeWindow,
                groupName: ScheduleGroupName? = nil,
                kmsKeyArn: KmsKeyArn? = nil,
                scheduleExpression: ScheduleExpression,
                scheduleExpressionTimezone: ScheduleExpressionTimezone? = nil,
                startDate: StartDate? = nil,
                state: ScheduleState? = nil,
                target: Target) {
        self.clientToken = clientToken
        self.description = description
        self.endDate = endDate
        self.flexibleTimeWindow = flexibleTimeWindow
        self.groupName = groupName
        self.kmsKeyArn = kmsKeyArn
        self.scheduleExpression = scheduleExpression
        self.scheduleExpressionTimezone = scheduleExpressionTimezone
        self.startDate = startDate
        self.state = state
        self.target = target
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case description = "Description"
        case endDate = "EndDate"
        case flexibleTimeWindow = "FlexibleTimeWindow"
        case groupName = "GroupName"
        case kmsKeyArn = "KmsKeyArn"
        case scheduleExpression = "ScheduleExpression"
        case scheduleExpressionTimezone = "ScheduleExpressionTimezone"
        case startDate = "StartDate"
        case state = "State"
        case target = "Target"
    }

    public func validate() throws {
        try clientToken?.validateAsClientToken()
        try description?.validateAsDescription()
        try flexibleTimeWindow.validate()
        try groupName?.validateAsScheduleGroupName()
        try kmsKeyArn?.validateAsKmsKeyArn()
        try scheduleExpression.validateAsScheduleExpression()
        try scheduleExpressionTimezone?.validateAsScheduleExpressionTimezone()
        try target.validate()
    }
}

public extension CreateScheduleInput {
    func asEventBridgeSchedulerModelCreateScheduleOperationInputBody() -> CreateScheduleOperationInputBody {
        return CreateScheduleOperationInputBody(
            clientToken: clientToken,
            description: description,
            endDate: endDate,
            flexibleTimeWindow: flexibleTimeWindow,
            groupName: groupName,
            kmsKeyArn: kmsKeyArn,
            scheduleExpression: scheduleExpression,
            scheduleExpressionTimezone: scheduleExpressionTimezone,
            startDate: startDate,
            state: state,
            target: target)
    }
}

/**
 Structure to encode the path input for the CreateScheduleGroup
 operation.
 */
public struct CreateScheduleGroupOperationInputPath: Codable, Equatable {
    public var name: ScheduleGroupName

    public init(name: ScheduleGroupName) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
    }

    public func validate() throws {
        try name.validateAsScheduleGroupName()
    }
}

public extension CreateScheduleGroupInput {
    func asEventBridgeSchedulerModelCreateScheduleGroupOperationInputPath() -> CreateScheduleGroupOperationInputPath {
        return CreateScheduleGroupOperationInputPath(
            name: name)
    }
}

/**
 Structure to encode the body input for the CreateScheduleGroup
 operation.
 */
public struct CreateScheduleGroupOperationInputBody: Codable, Equatable {
    public var clientToken: ClientToken?
    public var tags: TagList?

    public init(clientToken: ClientToken? = nil,
                tags: TagList? = nil) {
        self.clientToken = clientToken
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case tags = "Tags"
    }

    public func validate() throws {
        try clientToken?.validateAsClientToken()
        try tags?.validateAsTagList()
    }
}

public extension CreateScheduleGroupInput {
    func asEventBridgeSchedulerModelCreateScheduleGroupOperationInputBody() -> CreateScheduleGroupOperationInputBody {
        return CreateScheduleGroupOperationInputBody(
            clientToken: clientToken,
            tags: tags)
    }
}

/**
 Structure to encode the path input for the DeleteSchedule
 operation.
 */
public struct DeleteScheduleOperationInputPath: Codable, Equatable {
    public var name: Name

    public init(name: Name) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
    }

    public func validate() throws {
        try name.validateAsName()
    }
}

public extension DeleteScheduleInput {
    func asEventBridgeSchedulerModelDeleteScheduleOperationInputPath() -> DeleteScheduleOperationInputPath {
        return DeleteScheduleOperationInputPath(
            name: name)
    }
}

/**
 Structure to encode the query input for the DeleteSchedule
 operation.
 */
public struct DeleteScheduleOperationInputQuery: Codable, Equatable {
    public var clientToken: ClientToken?
    public var groupName: ScheduleGroupName?

    public init(clientToken: ClientToken? = nil,
                groupName: ScheduleGroupName? = nil) {
        self.clientToken = clientToken
        self.groupName = groupName
    }

    enum CodingKeys: String, CodingKey {
        case clientToken
        case groupName
    }

    public func validate() throws {
        try clientToken?.validateAsClientToken()
        try groupName?.validateAsScheduleGroupName()
    }
}

public extension DeleteScheduleInput {
    func asEventBridgeSchedulerModelDeleteScheduleOperationInputQuery() -> DeleteScheduleOperationInputQuery {
        return DeleteScheduleOperationInputQuery(
            clientToken: clientToken,
            groupName: groupName)
    }
}

/**
 Structure to encode the path input for the DeleteScheduleGroup
 operation.
 */
public struct DeleteScheduleGroupOperationInputPath: Codable, Equatable {
    public var name: ScheduleGroupName

    public init(name: ScheduleGroupName) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
    }

    public func validate() throws {
        try name.validateAsScheduleGroupName()
    }
}

public extension DeleteScheduleGroupInput {
    func asEventBridgeSchedulerModelDeleteScheduleGroupOperationInputPath() -> DeleteScheduleGroupOperationInputPath {
        return DeleteScheduleGroupOperationInputPath(
            name: name)
    }
}

/**
 Structure to encode the query input for the DeleteScheduleGroup
 operation.
 */
public struct DeleteScheduleGroupOperationInputQuery: Codable, Equatable {
    public var clientToken: ClientToken?

    public init(clientToken: ClientToken? = nil) {
        self.clientToken = clientToken
    }

    enum CodingKeys: String, CodingKey {
        case clientToken
    }

    public func validate() throws {
        try clientToken?.validateAsClientToken()
    }
}

public extension DeleteScheduleGroupInput {
    func asEventBridgeSchedulerModelDeleteScheduleGroupOperationInputQuery() -> DeleteScheduleGroupOperationInputQuery {
        return DeleteScheduleGroupOperationInputQuery(
            clientToken: clientToken)
    }
}

/**
 Structure to encode the path input for the GetSchedule
 operation.
 */
public struct GetScheduleOperationInputPath: Codable, Equatable {
    public var name: Name

    public init(name: Name) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
    }

    public func validate() throws {
        try name.validateAsName()
    }
}

public extension GetScheduleInput {
    func asEventBridgeSchedulerModelGetScheduleOperationInputPath() -> GetScheduleOperationInputPath {
        return GetScheduleOperationInputPath(
            name: name)
    }
}

/**
 Structure to encode the query input for the GetSchedule
 operation.
 */
public struct GetScheduleOperationInputQuery: Codable, Equatable {
    public var groupName: ScheduleGroupName?

    public init(groupName: ScheduleGroupName? = nil) {
        self.groupName = groupName
    }

    enum CodingKeys: String, CodingKey {
        case groupName
    }

    public func validate() throws {
        try groupName?.validateAsScheduleGroupName()
    }
}

public extension GetScheduleInput {
    func asEventBridgeSchedulerModelGetScheduleOperationInputQuery() -> GetScheduleOperationInputQuery {
        return GetScheduleOperationInputQuery(
            groupName: groupName)
    }
}

/**
 Structure to encode the path input for the GetScheduleGroup
 operation.
 */
public struct GetScheduleGroupOperationInputPath: Codable, Equatable {
    public var name: ScheduleGroupName

    public init(name: ScheduleGroupName) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
    }

    public func validate() throws {
        try name.validateAsScheduleGroupName()
    }
}

public extension GetScheduleGroupInput {
    func asEventBridgeSchedulerModelGetScheduleGroupOperationInputPath() -> GetScheduleGroupOperationInputPath {
        return GetScheduleGroupOperationInputPath(
            name: name)
    }
}

/**
 Structure to encode the query input for the ListScheduleGroups
 operation.
 */
public struct ListScheduleGroupsOperationInputQuery: Codable, Equatable {
    public var maxResults: MaxResults?
    public var namePrefix: ScheduleGroupNamePrefix?
    public var nextToken: NextToken?

    public init(maxResults: MaxResults? = nil,
                namePrefix: ScheduleGroupNamePrefix? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.namePrefix = namePrefix
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case namePrefix = "NamePrefix"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try namePrefix?.validateAsScheduleGroupNamePrefix()
        try nextToken?.validateAsNextToken()
    }
}

public extension ListScheduleGroupsInput {
    func asEventBridgeSchedulerModelListScheduleGroupsOperationInputQuery() -> ListScheduleGroupsOperationInputQuery {
        return ListScheduleGroupsOperationInputQuery(
            maxResults: maxResults,
            namePrefix: namePrefix,
            nextToken: nextToken)
    }
}

/**
 Structure to encode the query input for the ListSchedules
 operation.
 */
public struct ListSchedulesOperationInputQuery: Codable, Equatable {
    public var groupName: ScheduleGroupName?
    public var maxResults: MaxResults?
    public var namePrefix: NamePrefix?
    public var nextToken: NextToken?
    public var state: ScheduleState?

    public init(groupName: ScheduleGroupName? = nil,
                maxResults: MaxResults? = nil,
                namePrefix: NamePrefix? = nil,
                nextToken: NextToken? = nil,
                state: ScheduleState? = nil) {
        self.groupName = groupName
        self.maxResults = maxResults
        self.namePrefix = namePrefix
        self.nextToken = nextToken
        self.state = state
    }

    enum CodingKeys: String, CodingKey {
        case groupName = "ScheduleGroup"
        case maxResults = "MaxResults"
        case namePrefix = "NamePrefix"
        case nextToken = "NextToken"
        case state = "State"
    }

    public func validate() throws {
        try groupName?.validateAsScheduleGroupName()
        try maxResults?.validateAsMaxResults()
        try namePrefix?.validateAsNamePrefix()
        try nextToken?.validateAsNextToken()
    }
}

public extension ListSchedulesInput {
    func asEventBridgeSchedulerModelListSchedulesOperationInputQuery() -> ListSchedulesOperationInputQuery {
        return ListSchedulesOperationInputQuery(
            groupName: groupName,
            maxResults: maxResults,
            namePrefix: namePrefix,
            nextToken: nextToken,
            state: state)
    }
}

/**
 Structure to encode the path input for the ListTagsForResource
 operation.
 */
public struct ListTagsForResourceOperationInputPath: Codable, Equatable {
    public var resourceArn: TagResourceArn

    public init(resourceArn: TagResourceArn) {
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn = "ResourceArn"
    }

    public func validate() throws {
        try resourceArn.validateAsTagResourceArn()
    }
}

public extension ListTagsForResourceInput {
    func asEventBridgeSchedulerModelListTagsForResourceOperationInputPath() -> ListTagsForResourceOperationInputPath {
        return ListTagsForResourceOperationInputPath(
            resourceArn: resourceArn)
    }
}

/**
 Structure to encode the path input for the TagResource
 operation.
 */
public struct TagResourceOperationInputPath: Codable, Equatable {
    public var resourceArn: TagResourceArn

    public init(resourceArn: TagResourceArn) {
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn = "ResourceArn"
    }

    public func validate() throws {
        try resourceArn.validateAsTagResourceArn()
    }
}

public extension TagResourceInput {
    func asEventBridgeSchedulerModelTagResourceOperationInputPath() -> TagResourceOperationInputPath {
        return TagResourceOperationInputPath(
            resourceArn: resourceArn)
    }
}

/**
 Structure to encode the body input for the TagResource
 operation.
 */
public struct TagResourceOperationInputBody: Codable, Equatable {
    public var tags: TagList

    public init(tags: TagList) {
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case tags = "Tags"
    }

    public func validate() throws {
        try tags.validateAsTagList()
    }
}

public extension TagResourceInput {
    func asEventBridgeSchedulerModelTagResourceOperationInputBody() -> TagResourceOperationInputBody {
        return TagResourceOperationInputBody(
            tags: tags)
    }
}

/**
 Structure to encode the path input for the UntagResource
 operation.
 */
public struct UntagResourceOperationInputPath: Codable, Equatable {
    public var resourceArn: TagResourceArn

    public init(resourceArn: TagResourceArn) {
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn = "ResourceArn"
    }

    public func validate() throws {
        try resourceArn.validateAsTagResourceArn()
    }
}

public extension UntagResourceInput {
    func asEventBridgeSchedulerModelUntagResourceOperationInputPath() -> UntagResourceOperationInputPath {
        return UntagResourceOperationInputPath(
            resourceArn: resourceArn)
    }
}

/**
 Structure to encode the query input for the UntagResource
 operation.
 */
public struct UntagResourceOperationInputQuery: Codable, Equatable {
    public var tagKeys: TagKeyList

    public init(tagKeys: TagKeyList) {
        self.tagKeys = tagKeys
    }

    enum CodingKeys: String, CodingKey {
        case tagKeys = "TagKeys"
    }

    public func validate() throws {
        try tagKeys.validateAsTagKeyList()
    }
}

public extension UntagResourceInput {
    func asEventBridgeSchedulerModelUntagResourceOperationInputQuery() -> UntagResourceOperationInputQuery {
        return UntagResourceOperationInputQuery(
            tagKeys: tagKeys)
    }
}

/**
 Structure to encode the path input for the UpdateSchedule
 operation.
 */
public struct UpdateScheduleOperationInputPath: Codable, Equatable {
    public var name: Name

    public init(name: Name) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
    }

    public func validate() throws {
        try name.validateAsName()
    }
}

public extension UpdateScheduleInput {
    func asEventBridgeSchedulerModelUpdateScheduleOperationInputPath() -> UpdateScheduleOperationInputPath {
        return UpdateScheduleOperationInputPath(
            name: name)
    }
}

/**
 Structure to encode the body input for the UpdateSchedule
 operation.
 */
public struct UpdateScheduleOperationInputBody: Codable, Equatable {
    public var clientToken: ClientToken?
    public var description: Description?
    public var endDate: EndDate?
    public var flexibleTimeWindow: FlexibleTimeWindow
    public var groupName: ScheduleGroupName?
    public var kmsKeyArn: KmsKeyArn?
    public var scheduleExpression: ScheduleExpression
    public var scheduleExpressionTimezone: ScheduleExpressionTimezone?
    public var startDate: StartDate?
    public var state: ScheduleState?
    public var target: Target

    public init(clientToken: ClientToken? = nil,
                description: Description? = nil,
                endDate: EndDate? = nil,
                flexibleTimeWindow: FlexibleTimeWindow,
                groupName: ScheduleGroupName? = nil,
                kmsKeyArn: KmsKeyArn? = nil,
                scheduleExpression: ScheduleExpression,
                scheduleExpressionTimezone: ScheduleExpressionTimezone? = nil,
                startDate: StartDate? = nil,
                state: ScheduleState? = nil,
                target: Target) {
        self.clientToken = clientToken
        self.description = description
        self.endDate = endDate
        self.flexibleTimeWindow = flexibleTimeWindow
        self.groupName = groupName
        self.kmsKeyArn = kmsKeyArn
        self.scheduleExpression = scheduleExpression
        self.scheduleExpressionTimezone = scheduleExpressionTimezone
        self.startDate = startDate
        self.state = state
        self.target = target
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case description = "Description"
        case endDate = "EndDate"
        case flexibleTimeWindow = "FlexibleTimeWindow"
        case groupName = "GroupName"
        case kmsKeyArn = "KmsKeyArn"
        case scheduleExpression = "ScheduleExpression"
        case scheduleExpressionTimezone = "ScheduleExpressionTimezone"
        case startDate = "StartDate"
        case state = "State"
        case target = "Target"
    }

    public func validate() throws {
        try clientToken?.validateAsClientToken()
        try description?.validateAsDescription()
        try flexibleTimeWindow.validate()
        try groupName?.validateAsScheduleGroupName()
        try kmsKeyArn?.validateAsKmsKeyArn()
        try scheduleExpression.validateAsScheduleExpression()
        try scheduleExpressionTimezone?.validateAsScheduleExpressionTimezone()
        try target.validate()
    }
}

public extension UpdateScheduleInput {
    func asEventBridgeSchedulerModelUpdateScheduleOperationInputBody() -> UpdateScheduleOperationInputBody {
        return UpdateScheduleOperationInputBody(
            clientToken: clientToken,
            description: description,
            endDate: endDate,
            flexibleTimeWindow: flexibleTimeWindow,
            groupName: groupName,
            kmsKeyArn: kmsKeyArn,
            scheduleExpression: scheduleExpression,
            scheduleExpressionTimezone: scheduleExpressionTimezone,
            startDate: startDate,
            state: state,
            target: target)
    }
}
