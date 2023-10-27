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
// EventBridgeSchedulerModelDefaultInstances.swift
// EventBridgeSchedulerModel
//

import Foundation

public extension AwsVpcConfiguration {
    /**
     Default instance of the AwsVpcConfiguration structure.
     */
    static let __default: EventBridgeSchedulerModel.AwsVpcConfiguration = {
        let defaultInstance = EventBridgeSchedulerModel.AwsVpcConfiguration(
            assignPublicIp: nil,
            securityGroups: nil,
            subnets: ["0"])

        return defaultInstance
    }()
}

public extension CapacityProviderStrategyItem {
    /**
     Default instance of the CapacityProviderStrategyItem structure.
     */
    static let __default: EventBridgeSchedulerModel.CapacityProviderStrategyItem = {
        let defaultInstance = EventBridgeSchedulerModel.CapacityProviderStrategyItem(
            base: nil,
            capacityProvider: "0",
            weight: nil)

        return defaultInstance
    }()
}

public extension ConflictException {
    /**
     Default instance of the ConflictException structure.
     */
    static let __default: EventBridgeSchedulerModel.ConflictException = {
        let defaultInstance = EventBridgeSchedulerModel.ConflictException(
            message: "value")

        return defaultInstance
    }()
}

public extension CreateScheduleGroupInput {
    /**
     Default instance of the CreateScheduleGroupInput structure.
     */
    static let __default: EventBridgeSchedulerModel.CreateScheduleGroupInput = {
        let defaultInstance = EventBridgeSchedulerModel.CreateScheduleGroupInput(
            clientToken: nil,
            name: "0",
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateScheduleGroupOutput {
    /**
     Default instance of the CreateScheduleGroupOutput structure.
     */
    static let __default: EventBridgeSchedulerModel.CreateScheduleGroupOutput = {
        let defaultInstance = EventBridgeSchedulerModel.CreateScheduleGroupOutput(
            scheduleGroupArn: "0")

        return defaultInstance
    }()
}

public extension CreateScheduleInput {
    /**
     Default instance of the CreateScheduleInput structure.
     */
    static let __default: EventBridgeSchedulerModel.CreateScheduleInput = {
        let defaultInstance = EventBridgeSchedulerModel.CreateScheduleInput(
            clientToken: nil,
            description: nil,
            endDate: nil,
            flexibleTimeWindow: FlexibleTimeWindow.__default,
            groupName: nil,
            kmsKeyArn: nil,
            name: "0",
            scheduleExpression: "0",
            scheduleExpressionTimezone: nil,
            startDate: nil,
            state: nil,
            target: Target.__default)

        return defaultInstance
    }()
}

public extension CreateScheduleOutput {
    /**
     Default instance of the CreateScheduleOutput structure.
     */
    static let __default: EventBridgeSchedulerModel.CreateScheduleOutput = {
        let defaultInstance = EventBridgeSchedulerModel.CreateScheduleOutput(
            scheduleArn: "0")

        return defaultInstance
    }()
}

public extension DeadLetterConfig {
    /**
     Default instance of the DeadLetterConfig structure.
     */
    static let __default: EventBridgeSchedulerModel.DeadLetterConfig = {
        let defaultInstance = EventBridgeSchedulerModel.DeadLetterConfig(
            arn: nil)

        return defaultInstance
    }()
}

public extension DeleteScheduleGroupInput {
    /**
     Default instance of the DeleteScheduleGroupInput structure.
     */
    static let __default: EventBridgeSchedulerModel.DeleteScheduleGroupInput = {
        let defaultInstance = EventBridgeSchedulerModel.DeleteScheduleGroupInput(
            clientToken: nil,
            name: "0")

        return defaultInstance
    }()
}

public extension DeleteScheduleGroupOutput {
    /**
     Default instance of the DeleteScheduleGroupOutput structure.
     */
    static let __default: EventBridgeSchedulerModel.DeleteScheduleGroupOutput = {
        let defaultInstance = EventBridgeSchedulerModel.DeleteScheduleGroupOutput()

        return defaultInstance
    }()
}

public extension DeleteScheduleInput {
    /**
     Default instance of the DeleteScheduleInput structure.
     */
    static let __default: EventBridgeSchedulerModel.DeleteScheduleInput = {
        let defaultInstance = EventBridgeSchedulerModel.DeleteScheduleInput(
            clientToken: nil,
            groupName: nil,
            name: "0")

        return defaultInstance
    }()
}

public extension DeleteScheduleOutput {
    /**
     Default instance of the DeleteScheduleOutput structure.
     */
    static let __default: EventBridgeSchedulerModel.DeleteScheduleOutput = {
        let defaultInstance = EventBridgeSchedulerModel.DeleteScheduleOutput()

        return defaultInstance
    }()
}

public extension EcsParameters {
    /**
     Default instance of the EcsParameters structure.
     */
    static let __default: EventBridgeSchedulerModel.EcsParameters = {
        let defaultInstance = EventBridgeSchedulerModel.EcsParameters(
            capacityProviderStrategy: nil,
            enableECSManagedTags: nil,
            enableExecuteCommand: nil,
            group: nil,
            launchType: nil,
            networkConfiguration: nil,
            placementConstraints: nil,
            placementStrategy: nil,
            platformVersion: nil,
            propagateTags: nil,
            referenceId: nil,
            tags: nil,
            taskCount: nil,
            taskDefinitionArn: "0")

        return defaultInstance
    }()
}

public extension EventBridgeParameters {
    /**
     Default instance of the EventBridgeParameters structure.
     */
    static let __default: EventBridgeSchedulerModel.EventBridgeParameters = {
        let defaultInstance = EventBridgeSchedulerModel.EventBridgeParameters(
            detailType: "0",
            source: "0")

        return defaultInstance
    }()
}

public extension FlexibleTimeWindow {
    /**
     Default instance of the FlexibleTimeWindow structure.
     */
    static let __default: EventBridgeSchedulerModel.FlexibleTimeWindow = {
        let defaultInstance = EventBridgeSchedulerModel.FlexibleTimeWindow(
            maximumWindowInMinutes: nil,
            mode: .__default)

        return defaultInstance
    }()
}

public extension GetScheduleGroupInput {
    /**
     Default instance of the GetScheduleGroupInput structure.
     */
    static let __default: EventBridgeSchedulerModel.GetScheduleGroupInput = {
        let defaultInstance = EventBridgeSchedulerModel.GetScheduleGroupInput(
            name: "0")

        return defaultInstance
    }()
}

public extension GetScheduleGroupOutput {
    /**
     Default instance of the GetScheduleGroupOutput structure.
     */
    static let __default: EventBridgeSchedulerModel.GetScheduleGroupOutput = {
        let defaultInstance = EventBridgeSchedulerModel.GetScheduleGroupOutput(
            arn: nil,
            creationDate: nil,
            lastModificationDate: nil,
            name: nil,
            state: nil)

        return defaultInstance
    }()
}

public extension GetScheduleInput {
    /**
     Default instance of the GetScheduleInput structure.
     */
    static let __default: EventBridgeSchedulerModel.GetScheduleInput = {
        let defaultInstance = EventBridgeSchedulerModel.GetScheduleInput(
            groupName: nil,
            name: "0")

        return defaultInstance
    }()
}

public extension GetScheduleOutput {
    /**
     Default instance of the GetScheduleOutput structure.
     */
    static let __default: EventBridgeSchedulerModel.GetScheduleOutput = {
        let defaultInstance = EventBridgeSchedulerModel.GetScheduleOutput(
            arn: nil,
            creationDate: nil,
            description: nil,
            endDate: nil,
            flexibleTimeWindow: nil,
            groupName: nil,
            kmsKeyArn: nil,
            lastModificationDate: nil,
            name: nil,
            scheduleExpression: nil,
            scheduleExpressionTimezone: nil,
            startDate: nil,
            state: nil,
            target: nil)

        return defaultInstance
    }()
}

public extension InternalServerException {
    /**
     Default instance of the InternalServerException structure.
     */
    static let __default: EventBridgeSchedulerModel.InternalServerException = {
        let defaultInstance = EventBridgeSchedulerModel.InternalServerException(
            message: "value")

        return defaultInstance
    }()
}

public extension KinesisParameters {
    /**
     Default instance of the KinesisParameters structure.
     */
    static let __default: EventBridgeSchedulerModel.KinesisParameters = {
        let defaultInstance = EventBridgeSchedulerModel.KinesisParameters(
            partitionKey: "0")

        return defaultInstance
    }()
}

public extension ListScheduleGroupsInput {
    /**
     Default instance of the ListScheduleGroupsInput structure.
     */
    static let __default: EventBridgeSchedulerModel.ListScheduleGroupsInput = {
        let defaultInstance = EventBridgeSchedulerModel.ListScheduleGroupsInput(
            maxResults: nil,
            namePrefix: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListScheduleGroupsOutput {
    /**
     Default instance of the ListScheduleGroupsOutput structure.
     */
    static let __default: EventBridgeSchedulerModel.ListScheduleGroupsOutput = {
        let defaultInstance = EventBridgeSchedulerModel.ListScheduleGroupsOutput(
            nextToken: nil,
            scheduleGroups: [])

        return defaultInstance
    }()
}

public extension ListSchedulesInput {
    /**
     Default instance of the ListSchedulesInput structure.
     */
    static let __default: EventBridgeSchedulerModel.ListSchedulesInput = {
        let defaultInstance = EventBridgeSchedulerModel.ListSchedulesInput(
            groupName: nil,
            maxResults: nil,
            namePrefix: nil,
            nextToken: nil,
            state: nil)

        return defaultInstance
    }()
}

public extension ListSchedulesOutput {
    /**
     Default instance of the ListSchedulesOutput structure.
     */
    static let __default: EventBridgeSchedulerModel.ListSchedulesOutput = {
        let defaultInstance = EventBridgeSchedulerModel.ListSchedulesOutput(
            nextToken: nil,
            schedules: [])

        return defaultInstance
    }()
}

public extension ListTagsForResourceInput {
    /**
     Default instance of the ListTagsForResourceInput structure.
     */
    static let __default: EventBridgeSchedulerModel.ListTagsForResourceInput = {
        let defaultInstance = EventBridgeSchedulerModel.ListTagsForResourceInput(
            resourceArn: "0")

        return defaultInstance
    }()
}

public extension ListTagsForResourceOutput {
    /**
     Default instance of the ListTagsForResourceOutput structure.
     */
    static let __default: EventBridgeSchedulerModel.ListTagsForResourceOutput = {
        let defaultInstance = EventBridgeSchedulerModel.ListTagsForResourceOutput(
            tags: nil)

        return defaultInstance
    }()
}

public extension NetworkConfiguration {
    /**
     Default instance of the NetworkConfiguration structure.
     */
    static let __default: EventBridgeSchedulerModel.NetworkConfiguration = {
        let defaultInstance = EventBridgeSchedulerModel.NetworkConfiguration(
            awsvpcConfiguration: nil)

        return defaultInstance
    }()
}

public extension PlacementConstraint {
    /**
     Default instance of the PlacementConstraint structure.
     */
    static let __default: EventBridgeSchedulerModel.PlacementConstraint = {
        let defaultInstance = EventBridgeSchedulerModel.PlacementConstraint(
            expression: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension PlacementStrategy {
    /**
     Default instance of the PlacementStrategy structure.
     */
    static let __default: EventBridgeSchedulerModel.PlacementStrategy = {
        let defaultInstance = EventBridgeSchedulerModel.PlacementStrategy(
            field: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension ResourceNotFoundException {
    /**
     Default instance of the ResourceNotFoundException structure.
     */
    static let __default: EventBridgeSchedulerModel.ResourceNotFoundException = {
        let defaultInstance = EventBridgeSchedulerModel.ResourceNotFoundException(
            message: "value")

        return defaultInstance
    }()
}

public extension RetryPolicy {
    /**
     Default instance of the RetryPolicy structure.
     */
    static let __default: EventBridgeSchedulerModel.RetryPolicy = {
        let defaultInstance = EventBridgeSchedulerModel.RetryPolicy(
            maximumEventAgeInSeconds: nil,
            maximumRetryAttempts: nil)

        return defaultInstance
    }()
}

public extension SageMakerPipelineParameter {
    /**
     Default instance of the SageMakerPipelineParameter structure.
     */
    static let __default: EventBridgeSchedulerModel.SageMakerPipelineParameter = {
        let defaultInstance = EventBridgeSchedulerModel.SageMakerPipelineParameter(
            name: "0",
            value: "0")

        return defaultInstance
    }()
}

public extension SageMakerPipelineParameters {
    /**
     Default instance of the SageMakerPipelineParameters structure.
     */
    static let __default: EventBridgeSchedulerModel.SageMakerPipelineParameters = {
        let defaultInstance = EventBridgeSchedulerModel.SageMakerPipelineParameters(
            pipelineParameterList: nil)

        return defaultInstance
    }()
}

public extension ScheduleGroupSummary {
    /**
     Default instance of the ScheduleGroupSummary structure.
     */
    static let __default: EventBridgeSchedulerModel.ScheduleGroupSummary = {
        let defaultInstance = EventBridgeSchedulerModel.ScheduleGroupSummary(
            arn: nil,
            creationDate: nil,
            lastModificationDate: nil,
            name: nil,
            state: nil)

        return defaultInstance
    }()
}

public extension ScheduleSummary {
    /**
     Default instance of the ScheduleSummary structure.
     */
    static let __default: EventBridgeSchedulerModel.ScheduleSummary = {
        let defaultInstance = EventBridgeSchedulerModel.ScheduleSummary(
            arn: nil,
            creationDate: nil,
            groupName: nil,
            lastModificationDate: nil,
            name: nil,
            state: nil,
            target: nil)

        return defaultInstance
    }()
}

public extension ServiceQuotaExceededException {
    /**
     Default instance of the ServiceQuotaExceededException structure.
     */
    static let __default: EventBridgeSchedulerModel.ServiceQuotaExceededException = {
        let defaultInstance = EventBridgeSchedulerModel.ServiceQuotaExceededException(
            message: "value")

        return defaultInstance
    }()
}

public extension SqsParameters {
    /**
     Default instance of the SqsParameters structure.
     */
    static let __default: EventBridgeSchedulerModel.SqsParameters = {
        let defaultInstance = EventBridgeSchedulerModel.SqsParameters(
            messageGroupId: nil)

        return defaultInstance
    }()
}

public extension Tag {
    /**
     Default instance of the Tag structure.
     */
    static let __default: EventBridgeSchedulerModel.Tag = {
        let defaultInstance = EventBridgeSchedulerModel.Tag(
            key: "0",
            value: "0")

        return defaultInstance
    }()
}

public extension TagResourceInput {
    /**
     Default instance of the TagResourceInput structure.
     */
    static let __default: EventBridgeSchedulerModel.TagResourceInput = {
        let defaultInstance = EventBridgeSchedulerModel.TagResourceInput(
            resourceArn: "0",
            tags: [])

        return defaultInstance
    }()
}

public extension TagResourceOutput {
    /**
     Default instance of the TagResourceOutput structure.
     */
    static let __default: EventBridgeSchedulerModel.TagResourceOutput = {
        let defaultInstance = EventBridgeSchedulerModel.TagResourceOutput()

        return defaultInstance
    }()
}

public extension Target {
    /**
     Default instance of the Target structure.
     */
    static let __default: EventBridgeSchedulerModel.Target = {
        let defaultInstance = EventBridgeSchedulerModel.Target(
            arn: "0",
            deadLetterConfig: nil,
            ecsParameters: nil,
            eventBridgeParameters: nil,
            input: nil,
            kinesisParameters: nil,
            retryPolicy: nil,
            roleArn: "0",
            sageMakerPipelineParameters: nil,
            sqsParameters: nil)

        return defaultInstance
    }()
}

public extension TargetSummary {
    /**
     Default instance of the TargetSummary structure.
     */
    static let __default: EventBridgeSchedulerModel.TargetSummary = {
        let defaultInstance = EventBridgeSchedulerModel.TargetSummary(
            arn: "0")

        return defaultInstance
    }()
}

public extension ThrottlingException {
    /**
     Default instance of the ThrottlingException structure.
     */
    static let __default: EventBridgeSchedulerModel.ThrottlingException = {
        let defaultInstance = EventBridgeSchedulerModel.ThrottlingException(
            message: "value")

        return defaultInstance
    }()
}

public extension UntagResourceInput {
    /**
     Default instance of the UntagResourceInput structure.
     */
    static let __default: EventBridgeSchedulerModel.UntagResourceInput = {
        let defaultInstance = EventBridgeSchedulerModel.UntagResourceInput(
            resourceArn: "0",
            tagKeys: [])

        return defaultInstance
    }()
}

public extension UntagResourceOutput {
    /**
     Default instance of the UntagResourceOutput structure.
     */
    static let __default: EventBridgeSchedulerModel.UntagResourceOutput = {
        let defaultInstance = EventBridgeSchedulerModel.UntagResourceOutput()

        return defaultInstance
    }()
}

public extension UpdateScheduleInput {
    /**
     Default instance of the UpdateScheduleInput structure.
     */
    static let __default: EventBridgeSchedulerModel.UpdateScheduleInput = {
        let defaultInstance = EventBridgeSchedulerModel.UpdateScheduleInput(
            clientToken: nil,
            description: nil,
            endDate: nil,
            flexibleTimeWindow: FlexibleTimeWindow.__default,
            groupName: nil,
            kmsKeyArn: nil,
            name: "0",
            scheduleExpression: "0",
            scheduleExpressionTimezone: nil,
            startDate: nil,
            state: nil,
            target: Target.__default)

        return defaultInstance
    }()
}

public extension UpdateScheduleOutput {
    /**
     Default instance of the UpdateScheduleOutput structure.
     */
    static let __default: EventBridgeSchedulerModel.UpdateScheduleOutput = {
        let defaultInstance = EventBridgeSchedulerModel.UpdateScheduleOutput(
            scheduleArn: "0")

        return defaultInstance
    }()
}

public extension ValidationException {
    /**
     Default instance of the ValidationException structure.
     */
    static let __default: EventBridgeSchedulerModel.ValidationException = {
        let defaultInstance = EventBridgeSchedulerModel.ValidationException(
            message: "value")

        return defaultInstance
    }()
}
