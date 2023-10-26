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
// SchedulerModelTypes.swift
// SchedulerModel
//

import Foundation

/**
 Enumeration restricting the values of the AssignPublicIp field.
 */
public enum AssignPublicIp: String, Codable, CustomStringConvertible {
    case disabled = "DISABLED"
    case enabled = "ENABLED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AssignPublicIp = .disabled
}

/**
 Type definition for the CapacityProvider field.
 */
public typealias CapacityProvider = String

/**
 Type definition for the CapacityProviderStrategy field.
 */
public typealias CapacityProviderStrategy = [CapacityProviderStrategyItem]

/**
 Type definition for the CapacityProviderStrategyItemBase field.
 */
public typealias CapacityProviderStrategyItemBase = Int

/**
 Type definition for the CapacityProviderStrategyItemWeight field.
 */
public typealias CapacityProviderStrategyItemWeight = Int

/**
 Type definition for the ClientToken field.
 */
public typealias ClientToken = String

/**
 Type definition for the CreationDate field.
 */
public typealias CreationDate = String

/**
 Type definition for the DeadLetterConfigArnString field.
 */
public typealias DeadLetterConfigArnString = String

/**
 Type definition for the Description field.
 */
public typealias Description = String

/**
 Type definition for the DetailType field.
 */
public typealias DetailType = String

/**
 Type definition for the EnableECSManagedTags field.
 */
public typealias EnableECSManagedTags = Bool

/**
 Type definition for the EnableExecuteCommand field.
 */
public typealias EnableExecuteCommand = Bool

/**
 Type definition for the EndDate field.
 */
public typealias EndDate = String

/**
 Enumeration restricting the values of the FlexibleTimeWindowMode field.
 */
public enum FlexibleTimeWindowMode: String, Codable, CustomStringConvertible {
    case flexible = "FLEXIBLE"
    case off = "OFF"

    public var description: String {
        return rawValue
    }
    
    public static let __default: FlexibleTimeWindowMode = .flexible
}

/**
 Type definition for the Group field.
 */
public typealias Group = String

/**
 Type definition for the KmsKeyArn field.
 */
public typealias KmsKeyArn = String

/**
 Type definition for the LastModificationDate field.
 */
public typealias LastModificationDate = String

/**
 Enumeration restricting the values of the LaunchType field.
 */
public enum LaunchType: String, Codable, CustomStringConvertible {
    case ec2 = "EC2"
    case external = "EXTERNAL"
    case fargate = "FARGATE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: LaunchType = .ec2
}

/**
 Type definition for the MaxResults field.
 */
public typealias MaxResults = Int

/**
 Type definition for the MaximumEventAgeInSeconds field.
 */
public typealias MaximumEventAgeInSeconds = Int

/**
 Type definition for the MaximumRetryAttempts field.
 */
public typealias MaximumRetryAttempts = Int

/**
 Type definition for the MaximumWindowInMinutes field.
 */
public typealias MaximumWindowInMinutes = Int

/**
 Type definition for the MessageGroupId field.
 */
public typealias MessageGroupId = String

/**
 Type definition for the Name field.
 */
public typealias Name = String

/**
 Type definition for the NamePrefix field.
 */
public typealias NamePrefix = String

/**
 Type definition for the NextToken field.
 */
public typealias NextToken = String

/**
 Type definition for the PlacementConstraintExpression field.
 */
public typealias PlacementConstraintExpression = String

/**
 Enumeration restricting the values of the PlacementConstraintType field.
 */
public enum PlacementConstraintType: String, Codable, CustomStringConvertible {
    case distinctinstance = "distinctInstance"
    case memberof = "memberOf"

    public var description: String {
        return rawValue
    }
    
    public static let __default: PlacementConstraintType = .distinctinstance
}

/**
 Type definition for the PlacementConstraints field.
 */
public typealias PlacementConstraints = [PlacementConstraint]

/**
 Type definition for the PlacementStrategies field.
 */
public typealias PlacementStrategies = [PlacementStrategy]

/**
 Type definition for the PlacementStrategyField field.
 */
public typealias PlacementStrategyField = String

/**
 Enumeration restricting the values of the PlacementStrategyType field.
 */
public enum PlacementStrategyType: String, Codable, CustomStringConvertible {
    case binpack
    case random
    case spread

    public var description: String {
        return rawValue
    }
    
    public static let __default: PlacementStrategyType = .binpack
}

/**
 Type definition for the PlatformVersion field.
 */
public typealias PlatformVersion = String

/**
 Enumeration restricting the values of the PropagateTags field.
 */
public enum PropagateTags: String, Codable, CustomStringConvertible {
    case taskDefinition = "TASK_DEFINITION"

    public var description: String {
        return rawValue
    }
    
    public static let __default: PropagateTags = .taskDefinition
}

/**
 Type definition for the ReferenceId field.
 */
public typealias ReferenceId = String

/**
 Type definition for the RoleArn field.
 */
public typealias RoleArn = String

/**
 Type definition for the SageMakerPipelineParameterList field.
 */
public typealias SageMakerPipelineParameterList = [SageMakerPipelineParameter]

/**
 Type definition for the SageMakerPipelineParameterName field.
 */
public typealias SageMakerPipelineParameterName = String

/**
 Type definition for the SageMakerPipelineParameterValue field.
 */
public typealias SageMakerPipelineParameterValue = String

/**
 Type definition for the ScheduleArn field.
 */
public typealias ScheduleArn = String

/**
 Type definition for the ScheduleExpression field.
 */
public typealias ScheduleExpression = String

/**
 Type definition for the ScheduleExpressionTimezone field.
 */
public typealias ScheduleExpressionTimezone = String

/**
 Type definition for the ScheduleGroupArn field.
 */
public typealias ScheduleGroupArn = String

/**
 Type definition for the ScheduleGroupList field.
 */
public typealias ScheduleGroupList = [ScheduleGroupSummary]

/**
 Type definition for the ScheduleGroupName field.
 */
public typealias ScheduleGroupName = String

/**
 Type definition for the ScheduleGroupNamePrefix field.
 */
public typealias ScheduleGroupNamePrefix = String

/**
 Enumeration restricting the values of the ScheduleGroupState field.
 */
public enum ScheduleGroupState: String, Codable, CustomStringConvertible {
    case active = "ACTIVE"
    case deleting = "DELETING"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ScheduleGroupState = .active
}

/**
 Type definition for the ScheduleList field.
 */
public typealias ScheduleList = [ScheduleSummary]

/**
 Enumeration restricting the values of the ScheduleState field.
 */
public enum ScheduleState: String, Codable, CustomStringConvertible {
    case disabled = "DISABLED"
    case enabled = "ENABLED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ScheduleState = .disabled
}

/**
 Type definition for the SecurityGroup field.
 */
public typealias SecurityGroup = String

/**
 Type definition for the SecurityGroups field.
 */
public typealias SecurityGroups = [SecurityGroup]

/**
 Type definition for the Source field.
 */
public typealias Source = String

/**
 Type definition for the StartDate field.
 */
public typealias StartDate = String

/**
 Type definition for the Subnet field.
 */
public typealias Subnet = String

/**
 Type definition for the Subnets field.
 */
public typealias Subnets = [Subnet]

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
 Type definition for the TagMap field.
 */
public typealias TagMap = [TagKey: TagValue]

/**
 Type definition for the TagResourceArn field.
 */
public typealias TagResourceArn = String

/**
 Type definition for the TagValue field.
 */
public typealias TagValue = String

/**
 Type definition for the Tags field.
 */
public typealias Tags = [TagMap]

/**
 Type definition for the TargetArn field.
 */
public typealias TargetArn = String

/**
 Type definition for the TargetInput field.
 */
public typealias TargetInput = String

/**
 Type definition for the TargetPartitionKey field.
 */
public typealias TargetPartitionKey = String

/**
 Type definition for the TaskCount field.
 */
public typealias TaskCount = Int

/**
 Type definition for the TaskDefinitionArn field.
 */
public typealias TaskDefinitionArn = String

/**
 Validation for the CapacityProvider field.
*/
extension SchedulerModel.CapacityProvider {
    public func validateAsCapacityProvider() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to CapacityProvider violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw SchedulerError.validationError(reason: "The provided value to CapacityProvider violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the CapacityProviderStrategy field.
*/
extension Array where Element == SchedulerModel.CapacityProviderStrategyItem {
    public func validateAsCapacityProviderStrategy() throws {
        if self.count < 0 {
            throw SchedulerError.validationError(reason: "The provided value to CapacityProviderStrategy violated the minimum length constraint.")
        }

        if self.count > 6 {
            throw SchedulerError.validationError(reason: "The provided value to CapacityProviderStrategy violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the CapacityProviderStrategyItemBase field.
*/
extension SchedulerModel.CapacityProviderStrategyItemBase {
    public func validateAsCapacityProviderStrategyItemBase() throws {
        if self < 0 {
            throw SchedulerError.validationError(reason: "The provided value to CapacityProviderStrategyItemBase violated the minimum range constraint.")
        }

        if self > 100000 {
            throw SchedulerError.validationError(reason: "The provided value to CapacityProviderStrategyItemBase violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the CapacityProviderStrategyItemWeight field.
*/
extension SchedulerModel.CapacityProviderStrategyItemWeight {
    public func validateAsCapacityProviderStrategyItemWeight() throws {
        if self < 0 {
            throw SchedulerError.validationError(reason: "The provided value to CapacityProviderStrategyItemWeight violated the minimum range constraint.")
        }

        if self > 1000 {
            throw SchedulerError.validationError(reason: "The provided value to CapacityProviderStrategyItemWeight violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the ClientToken field.
*/
extension SchedulerModel.ClientToken {
    public func validateAsClientToken() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to ClientToken violated the minimum length constraint.")
        }

        if self.count > 64 {
            throw SchedulerError.validationError(reason: "The provided value to ClientToken violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^[a-zA-Z0-9-_]+$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SchedulerError.validationError(
                    reason: "The provided value to ClientToken violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the DeadLetterConfigArnString field.
*/
extension SchedulerModel.DeadLetterConfigArnString {
    public func validateAsDeadLetterConfigArnString() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to DeadLetterConfigArnString violated the minimum length constraint.")
        }

        if self.count > 1600 {
            throw SchedulerError.validationError(reason: "The provided value to DeadLetterConfigArnString violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^arn:aws(-[a-z]+)?:sqs:[a-z0-9\\-]+:\\d{12}:[a-zA-Z0-9\\-_]+$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SchedulerError.validationError(
                    reason: "The provided value to DeadLetterConfigArnString violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the Description field.
*/
extension SchedulerModel.Description {
    public func validateAsDescription() throws {
        if self.count < 0 {
            throw SchedulerError.validationError(reason: "The provided value to Description violated the minimum length constraint.")
        }

        if self.count > 512 {
            throw SchedulerError.validationError(reason: "The provided value to Description violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the DetailType field.
*/
extension SchedulerModel.DetailType {
    public func validateAsDetailType() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to DetailType violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw SchedulerError.validationError(reason: "The provided value to DetailType violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Group field.
*/
extension SchedulerModel.Group {
    public func validateAsGroup() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to Group violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw SchedulerError.validationError(reason: "The provided value to Group violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the KmsKeyArn field.
*/
extension SchedulerModel.KmsKeyArn {
    public func validateAsKmsKeyArn() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to KmsKeyArn violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw SchedulerError.validationError(reason: "The provided value to KmsKeyArn violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^arn:aws(-[a-z]+)?:kms:[a-z0-9\\-]+:\\d{12}:(key|alias)\\/[0-9a-zA-Z-_]*$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SchedulerError.validationError(
                    reason: "The provided value to KmsKeyArn violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the MaxResults field.
*/
extension SchedulerModel.MaxResults {
    public func validateAsMaxResults() throws {
        if self < 1 {
            throw SchedulerError.validationError(reason: "The provided value to MaxResults violated the minimum range constraint.")
        }

        if self > 100 {
            throw SchedulerError.validationError(reason: "The provided value to MaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the MaximumEventAgeInSeconds field.
*/
extension SchedulerModel.MaximumEventAgeInSeconds {
    public func validateAsMaximumEventAgeInSeconds() throws {
        if self < 60 {
            throw SchedulerError.validationError(reason: "The provided value to MaximumEventAgeInSeconds violated the minimum range constraint.")
        }

        if self > 86400 {
            throw SchedulerError.validationError(reason: "The provided value to MaximumEventAgeInSeconds violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the MaximumRetryAttempts field.
*/
extension SchedulerModel.MaximumRetryAttempts {
    public func validateAsMaximumRetryAttempts() throws {
        if self < 0 {
            throw SchedulerError.validationError(reason: "The provided value to MaximumRetryAttempts violated the minimum range constraint.")
        }

        if self > 185 {
            throw SchedulerError.validationError(reason: "The provided value to MaximumRetryAttempts violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the MaximumWindowInMinutes field.
*/
extension SchedulerModel.MaximumWindowInMinutes {
    public func validateAsMaximumWindowInMinutes() throws {
        if self < 1 {
            throw SchedulerError.validationError(reason: "The provided value to MaximumWindowInMinutes violated the minimum range constraint.")
        }

        if self > 1440 {
            throw SchedulerError.validationError(reason: "The provided value to MaximumWindowInMinutes violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the MessageGroupId field.
*/
extension SchedulerModel.MessageGroupId {
    public func validateAsMessageGroupId() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to MessageGroupId violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw SchedulerError.validationError(reason: "The provided value to MessageGroupId violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Name field.
*/
extension SchedulerModel.Name {
    public func validateAsName() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to Name violated the minimum length constraint.")
        }

        if self.count > 64 {
            throw SchedulerError.validationError(reason: "The provided value to Name violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^[0-9a-zA-Z-_.]+$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SchedulerError.validationError(
                    reason: "The provided value to Name violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the NamePrefix field.
*/
extension SchedulerModel.NamePrefix {
    public func validateAsNamePrefix() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to NamePrefix violated the minimum length constraint.")
        }

        if self.count > 64 {
            throw SchedulerError.validationError(reason: "The provided value to NamePrefix violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^[0-9a-zA-Z-_.]+$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SchedulerError.validationError(
                    reason: "The provided value to NamePrefix violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the NextToken field.
*/
extension SchedulerModel.NextToken {
    public func validateAsNextToken() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to NextToken violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw SchedulerError.validationError(reason: "The provided value to NextToken violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the PlacementConstraintExpression field.
*/
extension SchedulerModel.PlacementConstraintExpression {
    public func validateAsPlacementConstraintExpression() throws {
        if self.count < 0 {
            throw SchedulerError.validationError(reason: "The provided value to PlacementConstraintExpression violated the minimum length constraint.")
        }

        if self.count > 2000 {
            throw SchedulerError.validationError(reason: "The provided value to PlacementConstraintExpression violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the PlacementConstraints field.
*/
extension Array where Element == SchedulerModel.PlacementConstraint {
    public func validateAsPlacementConstraints() throws {
        if self.count < 0 {
            throw SchedulerError.validationError(reason: "The provided value to PlacementConstraints violated the minimum length constraint.")
        }

        if self.count > 10 {
            throw SchedulerError.validationError(reason: "The provided value to PlacementConstraints violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the PlacementStrategies field.
*/
extension Array where Element == SchedulerModel.PlacementStrategy {
    public func validateAsPlacementStrategies() throws {
        if self.count < 0 {
            throw SchedulerError.validationError(reason: "The provided value to PlacementStrategies violated the minimum length constraint.")
        }

        if self.count > 5 {
            throw SchedulerError.validationError(reason: "The provided value to PlacementStrategies violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the PlacementStrategyField field.
*/
extension SchedulerModel.PlacementStrategyField {
    public func validateAsPlacementStrategyField() throws {
        if self.count < 0 {
            throw SchedulerError.validationError(reason: "The provided value to PlacementStrategyField violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw SchedulerError.validationError(reason: "The provided value to PlacementStrategyField violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the PlatformVersion field.
*/
extension SchedulerModel.PlatformVersion {
    public func validateAsPlatformVersion() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to PlatformVersion violated the minimum length constraint.")
        }

        if self.count > 64 {
            throw SchedulerError.validationError(reason: "The provided value to PlatformVersion violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ReferenceId field.
*/
extension SchedulerModel.ReferenceId {
    public func validateAsReferenceId() throws {
        if self.count < 0 {
            throw SchedulerError.validationError(reason: "The provided value to ReferenceId violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw SchedulerError.validationError(reason: "The provided value to ReferenceId violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the RoleArn field.
*/
extension SchedulerModel.RoleArn {
    public func validateAsRoleArn() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to RoleArn violated the minimum length constraint.")
        }

        if self.count > 1600 {
            throw SchedulerError.validationError(reason: "The provided value to RoleArn violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^arn:aws(-[a-z]+)?:iam::\\d{12}:role\\/[\\w+=,.@\\/-]+$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SchedulerError.validationError(
                    reason: "The provided value to RoleArn violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the SageMakerPipelineParameterList field.
*/
extension Array where Element == SchedulerModel.SageMakerPipelineParameter {
    public func validateAsSageMakerPipelineParameterList() throws {
        if self.count < 0 {
            throw SchedulerError.validationError(reason: "The provided value to SageMakerPipelineParameterList violated the minimum length constraint.")
        }

        if self.count > 200 {
            throw SchedulerError.validationError(reason: "The provided value to SageMakerPipelineParameterList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the SageMakerPipelineParameterName field.
*/
extension SchedulerModel.SageMakerPipelineParameterName {
    public func validateAsSageMakerPipelineParameterName() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to SageMakerPipelineParameterName violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw SchedulerError.validationError(reason: "The provided value to SageMakerPipelineParameterName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^[A-Za-z0-9\\-_]*$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SchedulerError.validationError(
                    reason: "The provided value to SageMakerPipelineParameterName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the SageMakerPipelineParameterValue field.
*/
extension SchedulerModel.SageMakerPipelineParameterValue {
    public func validateAsSageMakerPipelineParameterValue() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to SageMakerPipelineParameterValue violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw SchedulerError.validationError(reason: "The provided value to SageMakerPipelineParameterValue violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ScheduleArn field.
*/
extension SchedulerModel.ScheduleArn {
    public func validateAsScheduleArn() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to ScheduleArn violated the minimum length constraint.")
        }

        if self.count > 1224 {
            throw SchedulerError.validationError(reason: "The provided value to ScheduleArn violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^arn:aws(-[a-z]+)?:scheduler:[a-z0-9\\-]+:\\d{12}:schedule\\/[0-9a-zA-Z-_.]+\\/[0-9a-zA-Z-_.]+$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SchedulerError.validationError(
                    reason: "The provided value to ScheduleArn violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ScheduleExpression field.
*/
extension SchedulerModel.ScheduleExpression {
    public func validateAsScheduleExpression() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to ScheduleExpression violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw SchedulerError.validationError(reason: "The provided value to ScheduleExpression violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ScheduleExpressionTimezone field.
*/
extension SchedulerModel.ScheduleExpressionTimezone {
    public func validateAsScheduleExpressionTimezone() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to ScheduleExpressionTimezone violated the minimum length constraint.")
        }

        if self.count > 50 {
            throw SchedulerError.validationError(reason: "The provided value to ScheduleExpressionTimezone violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ScheduleGroupArn field.
*/
extension SchedulerModel.ScheduleGroupArn {
    public func validateAsScheduleGroupArn() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to ScheduleGroupArn violated the minimum length constraint.")
        }

        if self.count > 1224 {
            throw SchedulerError.validationError(reason: "The provided value to ScheduleGroupArn violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^arn:aws(-[a-z]+)?:scheduler:[a-z0-9\\-]+:\\d{12}:schedule-group\\/[0-9a-zA-Z-_.]+$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SchedulerError.validationError(
                    reason: "The provided value to ScheduleGroupArn violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ScheduleGroupName field.
*/
extension SchedulerModel.ScheduleGroupName {
    public func validateAsScheduleGroupName() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to ScheduleGroupName violated the minimum length constraint.")
        }

        if self.count > 64 {
            throw SchedulerError.validationError(reason: "The provided value to ScheduleGroupName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^[0-9a-zA-Z-_.]+$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SchedulerError.validationError(
                    reason: "The provided value to ScheduleGroupName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ScheduleGroupNamePrefix field.
*/
extension SchedulerModel.ScheduleGroupNamePrefix {
    public func validateAsScheduleGroupNamePrefix() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to ScheduleGroupNamePrefix violated the minimum length constraint.")
        }

        if self.count > 64 {
            throw SchedulerError.validationError(reason: "The provided value to ScheduleGroupNamePrefix violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^[0-9a-zA-Z-_.]+$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SchedulerError.validationError(
                    reason: "The provided value to ScheduleGroupNamePrefix violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the SecurityGroup field.
*/
extension SchedulerModel.SecurityGroup {
    public func validateAsSecurityGroup() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to SecurityGroup violated the minimum length constraint.")
        }

        if self.count > 1000 {
            throw SchedulerError.validationError(reason: "The provided value to SecurityGroup violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the SecurityGroups field.
*/
extension Array where Element == SchedulerModel.SecurityGroup {
    public func validateAsSecurityGroups() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to SecurityGroups violated the minimum length constraint.")
        }

        if self.count > 5 {
            throw SchedulerError.validationError(reason: "The provided value to SecurityGroups violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Source field.
*/
extension SchedulerModel.Source {
    public func validateAsSource() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to Source violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw SchedulerError.validationError(reason: "The provided value to Source violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^(?=[/\\.\\-_A-Za-z0-9]+)((?!aws\\.).*)|(\\$(\\.[\\w_-]+(\\[(\\d+|\\*)\\])*)*)$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SchedulerError.validationError(
                    reason: "The provided value to Source violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the Subnet field.
*/
extension SchedulerModel.Subnet {
    public func validateAsSubnet() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to Subnet violated the minimum length constraint.")
        }

        if self.count > 1000 {
            throw SchedulerError.validationError(reason: "The provided value to Subnet violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Subnets field.
*/
extension Array where Element == SchedulerModel.Subnet {
    public func validateAsSubnets() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to Subnets violated the minimum length constraint.")
        }

        if self.count > 16 {
            throw SchedulerError.validationError(reason: "The provided value to Subnets violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TagKey field.
*/
extension SchedulerModel.TagKey {
    public func validateAsTagKey() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to TagKey violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw SchedulerError.validationError(reason: "The provided value to TagKey violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TagKeyList field.
*/
extension Array where Element == SchedulerModel.TagKey {
    public func validateAsTagKeyList() throws {
        if self.count < 0 {
            throw SchedulerError.validationError(reason: "The provided value to TagKeyList violated the minimum length constraint.")
        }

        if self.count > 200 {
            throw SchedulerError.validationError(reason: "The provided value to TagKeyList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TagList field.
*/
extension Array where Element == SchedulerModel.Tag {
    public func validateAsTagList() throws {
        if self.count < 0 {
            throw SchedulerError.validationError(reason: "The provided value to TagList violated the minimum length constraint.")
        }

        if self.count > 200 {
            throw SchedulerError.validationError(reason: "The provided value to TagList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TagResourceArn field.
*/
extension SchedulerModel.TagResourceArn {
    public func validateAsTagResourceArn() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to TagResourceArn violated the minimum length constraint.")
        }

        if self.count > 1011 {
            throw SchedulerError.validationError(reason: "The provided value to TagResourceArn violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^arn:aws(-[a-z]+)?:scheduler:[a-z0-9\\-]+:\\d{12}:schedule-group\\/[0-9a-zA-Z-_.]+$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SchedulerError.validationError(
                    reason: "The provided value to TagResourceArn violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the TagValue field.
*/
extension SchedulerModel.TagValue {
    public func validateAsTagValue() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to TagValue violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw SchedulerError.validationError(reason: "The provided value to TagValue violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Tags field.
*/
extension Array where Element == SchedulerModel.TagMap {
    public func validateAsTags() throws {
        if self.count < 0 {
            throw SchedulerError.validationError(reason: "The provided value to Tags violated the minimum length constraint.")
        }

        if self.count > 50 {
            throw SchedulerError.validationError(reason: "The provided value to Tags violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TargetArn field.
*/
extension SchedulerModel.TargetArn {
    public func validateAsTargetArn() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to TargetArn violated the minimum length constraint.")
        }

        if self.count > 1600 {
            throw SchedulerError.validationError(reason: "The provided value to TargetArn violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TargetInput field.
*/
extension SchedulerModel.TargetInput {
    public func validateAsTargetInput() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to TargetInput violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the TargetPartitionKey field.
*/
extension SchedulerModel.TargetPartitionKey {
    public func validateAsTargetPartitionKey() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to TargetPartitionKey violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw SchedulerError.validationError(reason: "The provided value to TargetPartitionKey violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TaskCount field.
*/
extension SchedulerModel.TaskCount {
    public func validateAsTaskCount() throws {
        if self < 1 {
            throw SchedulerError.validationError(reason: "The provided value to TaskCount violated the minimum range constraint.")
        }

        if self > 10 {
            throw SchedulerError.validationError(reason: "The provided value to TaskCount violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the TaskDefinitionArn field.
*/
extension SchedulerModel.TaskDefinitionArn {
    public func validateAsTaskDefinitionArn() throws {
        if self.count < 1 {
            throw SchedulerError.validationError(reason: "The provided value to TaskDefinitionArn violated the minimum length constraint.")
        }

        if self.count > 1600 {
            throw SchedulerError.validationError(reason: "The provided value to TaskDefinitionArn violated the maximum length constraint.")
        }
    }
}
