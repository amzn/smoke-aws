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
// SchedulerModelDefaultInstances.swift
// SchedulerModel
//

import Foundation

public extension AwsVpcConfiguration {
    /**
     Default instance of the AwsVpcConfiguration structure.
     */
    static let __default: SchedulerModel.AwsVpcConfiguration = {
        let defaultInstance = SchedulerModel.AwsVpcConfiguration(
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
    static let __default: SchedulerModel.CapacityProviderStrategyItem = {
        let defaultInstance = SchedulerModel.CapacityProviderStrategyItem(
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
    static let __default: SchedulerModel.ConflictException = {
        let defaultInstance = SchedulerModel.ConflictException(
            message: "value")

        return defaultInstance
    }()
}

public extension CreateScheduleGroupInput {
    /**
     Default instance of the CreateScheduleGroupInput structure.
     */
    static let __default: SchedulerModel.CreateScheduleGroupInput = {
        let defaultInstance = SchedulerModel.CreateScheduleGroupInput(
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
    static let __default: SchedulerModel.CreateScheduleGroupOutput = {
        let defaultInstance = SchedulerModel.CreateScheduleGroupOutput(
            scheduleGroupArn: "0")

        return defaultInstance
    }()
}

public extension CreateScheduleInput {
    /**
     Default instance of the CreateScheduleInput structure.
     */
    static let __default: SchedulerModel.CreateScheduleInput = {
        let defaultInstance = SchedulerModel.CreateScheduleInput(
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
    static let __default: SchedulerModel.CreateScheduleOutput = {
        let defaultInstance = SchedulerModel.CreateScheduleOutput(
            scheduleArn: "0")

        return defaultInstance
    }()
}

public extension DeadLetterConfig {
    /**
     Default instance of the DeadLetterConfig structure.
     */
    static let __default: SchedulerModel.DeadLetterConfig = {
        let defaultInstance = SchedulerModel.DeadLetterConfig(
            arn: nil)

        return defaultInstance
    }()
}

public extension DeleteScheduleGroupInput {
    /**
     Default instance of the DeleteScheduleGroupInput structure.
     */
    static let __default: SchedulerModel.DeleteScheduleGroupInput = {
        let defaultInstance = SchedulerModel.DeleteScheduleGroupInput(
            clientToken: nil,
            name: "0")

        return defaultInstance
    }()
}

public extension DeleteScheduleGroupOutput {
    /**
     Default instance of the DeleteScheduleGroupOutput structure.
     */
    static let __default: SchedulerModel.DeleteScheduleGroupOutput = {
        let defaultInstance = SchedulerModel.DeleteScheduleGroupOutput()

        return defaultInstance
    }()
}

public extension DeleteScheduleInput {
    /**
     Default instance of the DeleteScheduleInput structure.
     */
    static let __default: SchedulerModel.DeleteScheduleInput = {
        let defaultInstance = SchedulerModel.DeleteScheduleInput(
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
    static let __default: SchedulerModel.DeleteScheduleOutput = {
        let defaultInstance = SchedulerModel.DeleteScheduleOutput()

        return defaultInstance
    }()
}

public extension EcsParameters {
    /**
     Default instance of the EcsParameters structure.
     */
    static let __default: SchedulerModel.EcsParameters = {
        let defaultInstance = SchedulerModel.EcsParameters(
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
    static let __default: SchedulerModel.EventBridgeParameters = {
        let defaultInstance = SchedulerModel.EventBridgeParameters(
            detailType: "0",
            source: "0")

        return defaultInstance
    }()
}

public extension FlexibleTimeWindow {
    /**
     Default instance of the FlexibleTimeWindow structure.
     */
    static let __default: SchedulerModel.FlexibleTimeWindow = {
        let defaultInstance = SchedulerModel.FlexibleTimeWindow(
            maximumWindowInMinutes: nil,
            mode: .__default)

        return defaultInstance
    }()
}

public extension GetScheduleGroupInput {
    /**
     Default instance of the GetScheduleGroupInput structure.
     */
    static let __default: SchedulerModel.GetScheduleGroupInput = {
        let defaultInstance = SchedulerModel.GetScheduleGroupInput(
            name: "0")

        return defaultInstance
    }()
}

public extension GetScheduleGroupOutput {
    /**
     Default instance of the GetScheduleGroupOutput structure.
     */
    static let __default: SchedulerModel.GetScheduleGroupOutput = {
        let defaultInstance = SchedulerModel.GetScheduleGroupOutput(
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
    static let __default: SchedulerModel.GetScheduleInput = {
        let defaultInstance = SchedulerModel.GetScheduleInput(
            groupName: nil,
            name: "0")

        return defaultInstance
    }()
}

public extension GetScheduleOutput {
    /**
     Default instance of the GetScheduleOutput structure.
     */
    static let __default: SchedulerModel.GetScheduleOutput = {
        let defaultInstance = SchedulerModel.GetScheduleOutput(
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
    static let __default: SchedulerModel.InternalServerException = {
        let defaultInstance = SchedulerModel.InternalServerException(
            message: "value")

        return defaultInstance
    }()
}

public extension KinesisParameters {
    /**
     Default instance of the KinesisParameters structure.
     */
    static let __default: SchedulerModel.KinesisParameters = {
        let defaultInstance = SchedulerModel.KinesisParameters(
            partitionKey: "0")

        return defaultInstance
    }()
}

public extension ListScheduleGroupsInput {
    /**
     Default instance of the ListScheduleGroupsInput structure.
     */
    static let __default: SchedulerModel.ListScheduleGroupsInput = {
        let defaultInstance = SchedulerModel.ListScheduleGroupsInput(
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
    static let __default: SchedulerModel.ListScheduleGroupsOutput = {
        let defaultInstance = SchedulerModel.ListScheduleGroupsOutput(
            nextToken: nil,
            scheduleGroups: [])

        return defaultInstance
    }()
}

public extension ListSchedulesInput {
    /**
     Default instance of the ListSchedulesInput structure.
     */
    static let __default: SchedulerModel.ListSchedulesInput = {
        let defaultInstance = SchedulerModel.ListSchedulesInput(
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
    static let __default: SchedulerModel.ListSchedulesOutput = {
        let defaultInstance = SchedulerModel.ListSchedulesOutput(
            nextToken: nil,
            schedules: [])

        return defaultInstance
    }()
}

public extension ListTagsForResourceInput {
    /**
     Default instance of the ListTagsForResourceInput structure.
     */
    static let __default: SchedulerModel.ListTagsForResourceInput = {
        let defaultInstance = SchedulerModel.ListTagsForResourceInput(
            resourceArn: "0")

        return defaultInstance
    }()
}

public extension ListTagsForResourceOutput {
    /**
     Default instance of the ListTagsForResourceOutput structure.
     */
    static let __default: SchedulerModel.ListTagsForResourceOutput = {
        let defaultInstance = SchedulerModel.ListTagsForResourceOutput(
            tags: nil)

        return defaultInstance
    }()
}

public extension NetworkConfiguration {
    /**
     Default instance of the NetworkConfiguration structure.
     */
    static let __default: SchedulerModel.NetworkConfiguration = {
        let defaultInstance = SchedulerModel.NetworkConfiguration(
            awsvpcConfiguration: nil)

        return defaultInstance
    }()
}

public extension PlacementConstraint {
    /**
     Default instance of the PlacementConstraint structure.
     */
    static let __default: SchedulerModel.PlacementConstraint = {
        let defaultInstance = SchedulerModel.PlacementConstraint(
            expression: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension PlacementStrategy {
    /**
     Default instance of the PlacementStrategy structure.
     */
    static let __default: SchedulerModel.PlacementStrategy = {
        let defaultInstance = SchedulerModel.PlacementStrategy(
            field: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension ResourceNotFoundException {
    /**
     Default instance of the ResourceNotFoundException structure.
     */
    static let __default: SchedulerModel.ResourceNotFoundException = {
        let defaultInstance = SchedulerModel.ResourceNotFoundException(
            message: "value")

        return defaultInstance
    }()
}

public extension RetryPolicy {
    /**
     Default instance of the RetryPolicy structure.
     */
    static let __default: SchedulerModel.RetryPolicy = {
        let defaultInstance = SchedulerModel.RetryPolicy(
            maximumEventAgeInSeconds: nil,
            maximumRetryAttempts: nil)

        return defaultInstance
    }()
}

public extension SageMakerPipelineParameter {
    /**
     Default instance of the SageMakerPipelineParameter structure.
     */
    static let __default: SchedulerModel.SageMakerPipelineParameter = {
        let defaultInstance = SchedulerModel.SageMakerPipelineParameter(
            name: "0",
            value: "0")

        return defaultInstance
    }()
}

public extension SageMakerPipelineParameters {
    /**
     Default instance of the SageMakerPipelineParameters structure.
     */
    static let __default: SchedulerModel.SageMakerPipelineParameters = {
        let defaultInstance = SchedulerModel.SageMakerPipelineParameters(
            pipelineParameterList: nil)

        return defaultInstance
    }()
}

public extension ScheduleGroupSummary {
    /**
     Default instance of the ScheduleGroupSummary structure.
     */
    static let __default: SchedulerModel.ScheduleGroupSummary = {
        let defaultInstance = SchedulerModel.ScheduleGroupSummary(
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
    static let __default: SchedulerModel.ScheduleSummary = {
        let defaultInstance = SchedulerModel.ScheduleSummary(
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
    static let __default: SchedulerModel.ServiceQuotaExceededException = {
        let defaultInstance = SchedulerModel.ServiceQuotaExceededException(
            message: "value")

        return defaultInstance
    }()
}

public extension SqsParameters {
    /**
     Default instance of the SqsParameters structure.
     */
    static let __default: SchedulerModel.SqsParameters = {
        let defaultInstance = SchedulerModel.SqsParameters(
            messageGroupId: nil)

        return defaultInstance
    }()
}

public extension Tag {
    /**
     Default instance of the Tag structure.
     */
    static let __default: SchedulerModel.Tag = {
        let defaultInstance = SchedulerModel.Tag(
            key: "0",
            value: "0")

        return defaultInstance
    }()
}

public extension TagResourceInput {
    /**
     Default instance of the TagResourceInput structure.
     */
    static let __default: SchedulerModel.TagResourceInput = {
        let defaultInstance = SchedulerModel.TagResourceInput(
            resourceArn: "0",
            tags: [])

        return defaultInstance
    }()
}

public extension TagResourceOutput {
    /**
     Default instance of the TagResourceOutput structure.
     */
    static let __default: SchedulerModel.TagResourceOutput = {
        let defaultInstance = SchedulerModel.TagResourceOutput()

        return defaultInstance
    }()
}

public extension Target {
    /**
     Default instance of the Target structure.
     */
    static let __default: SchedulerModel.Target = {
        let defaultInstance = SchedulerModel.Target(
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
    static let __default: SchedulerModel.TargetSummary = {
        let defaultInstance = SchedulerModel.TargetSummary(
            arn: "0")

        return defaultInstance
    }()
}

public extension ThrottlingException {
    /**
     Default instance of the ThrottlingException structure.
     */
    static let __default: SchedulerModel.ThrottlingException = {
        let defaultInstance = SchedulerModel.ThrottlingException(
            message: "value")

        return defaultInstance
    }()
}

public extension UntagResourceInput {
    /**
     Default instance of the UntagResourceInput structure.
     */
    static let __default: SchedulerModel.UntagResourceInput = {
        let defaultInstance = SchedulerModel.UntagResourceInput(
            resourceArn: "0",
            tagKeys: [])

        return defaultInstance
    }()
}

public extension UntagResourceOutput {
    /**
     Default instance of the UntagResourceOutput structure.
     */
    static let __default: SchedulerModel.UntagResourceOutput = {
        let defaultInstance = SchedulerModel.UntagResourceOutput()

        return defaultInstance
    }()
}

public extension UpdateScheduleInput {
    /**
     Default instance of the UpdateScheduleInput structure.
     */
    static let __default: SchedulerModel.UpdateScheduleInput = {
        let defaultInstance = SchedulerModel.UpdateScheduleInput(
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
    static let __default: SchedulerModel.UpdateScheduleOutput = {
        let defaultInstance = SchedulerModel.UpdateScheduleOutput(
            scheduleArn: "0")

        return defaultInstance
    }()
}

public extension ValidationException {
    /**
     Default instance of the ValidationException structure.
     */
    static let __default: SchedulerModel.ValidationException = {
        let defaultInstance = SchedulerModel.ValidationException(
            message: "value")

        return defaultInstance
    }()
}
