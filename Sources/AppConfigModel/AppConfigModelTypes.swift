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
// AppConfigModelTypes.swift
// AppConfigModel
//

import Foundation

/**
 Type definition for the ApplicationList field.
 */
public typealias ApplicationList = [Application]

/**
 Type definition for the Arn field.
 */
public typealias Arn = String

/**
 Enumeration restricting the values of the BadRequestReason field.
 */
public enum BadRequestReason: String, Codable, CustomStringConvertible {
    case invalidconfiguration = "InvalidConfiguration"

    public var description: String {
        return rawValue
    }
    
    public static let __default: BadRequestReason = .invalidconfiguration
}

/**
 Type definition for the Blob field.
 */
public typealias Blob = Data

/**
 Enumeration restricting the values of the BytesMeasure field.
 */
public enum BytesMeasure: String, Codable, CustomStringConvertible {
    case kilobytes = "KILOBYTES"

    public var description: String {
        return rawValue
    }
    
    public static let __default: BytesMeasure = .kilobytes
}

/**
 Type definition for the ConfigurationProfileSummaryList field.
 */
public typealias ConfigurationProfileSummaryList = [ConfigurationProfileSummary]

/**
 Type definition for the ConfigurationProfileType field.
 */
public typealias ConfigurationProfileType = String

/**
 Enumeration restricting the values of the DeploymentEventType field.
 */
public enum DeploymentEventType: String, Codable, CustomStringConvertible {
    case bakeTimeStarted = "BAKE_TIME_STARTED"
    case deploymentCompleted = "DEPLOYMENT_COMPLETED"
    case deploymentStarted = "DEPLOYMENT_STARTED"
    case percentageUpdated = "PERCENTAGE_UPDATED"
    case rollbackCompleted = "ROLLBACK_COMPLETED"
    case rollbackStarted = "ROLLBACK_STARTED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DeploymentEventType = .bakeTimeStarted
}

/**
 Type definition for the DeploymentEvents field.
 */
public typealias DeploymentEvents = [DeploymentEvent]

/**
 Type definition for the DeploymentList field.
 */
public typealias DeploymentList = [DeploymentSummary]

/**
 Enumeration restricting the values of the DeploymentState field.
 */
public enum DeploymentState: String, Codable, CustomStringConvertible {
    case baking = "BAKING"
    case complete = "COMPLETE"
    case deploying = "DEPLOYING"
    case rolledBack = "ROLLED_BACK"
    case rollingBack = "ROLLING_BACK"
    case validating = "VALIDATING"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DeploymentState = .baking
}

/**
 Type definition for the DeploymentStrategyId field.
 */
public typealias DeploymentStrategyId = String

/**
 Type definition for the DeploymentStrategyList field.
 */
public typealias DeploymentStrategyList = [DeploymentStrategy]

/**
 Type definition for the Description field.
 */
public typealias Description = String

/**
 Type definition for the EnvironmentList field.
 */
public typealias EnvironmentList = [Environment]

/**
 Enumeration restricting the values of the EnvironmentState field.
 */
public enum EnvironmentState: String, Codable, CustomStringConvertible {
    case deploying = "DEPLOYING"
    case readyForDeployment = "READY_FOR_DEPLOYMENT"
    case rolledBack = "ROLLED_BACK"
    case rollingBack = "ROLLING_BACK"

    public var description: String {
        return rawValue
    }
    
    public static let __default: EnvironmentState = .deploying
}

/**
 Type definition for the Float field.
 */
public typealias Float = Double

/**
 Type definition for the GrowthFactor field.
 */
public typealias GrowthFactor = Double

/**
 Enumeration restricting the values of the GrowthType field.
 */
public enum GrowthType: String, Codable, CustomStringConvertible {
    case exponential = "EXPONENTIAL"
    case linear = "LINEAR"

    public var description: String {
        return rawValue
    }
    
    public static let __default: GrowthType = .exponential
}

/**
 Type definition for the HostedConfigurationVersionSummaryList field.
 */
public typealias HostedConfigurationVersionSummaryList = [HostedConfigurationVersionSummary]

/**
 Type definition for the Id field.
 */
public typealias Id = String

/**
 Type definition for the Integer field.
 */
public typealias Integer = Int

/**
 Type definition for the InvalidConfigurationDetailList field.
 */
public typealias InvalidConfigurationDetailList = [InvalidConfigurationDetail]

/**
 Type definition for the Iso8601DateTime field.
 */
public typealias Iso8601DateTime = String

/**
 Type definition for the MaxResults field.
 */
public typealias MaxResults = Int

/**
 Type definition for the MinutesBetween0And24Hours field.
 */
public typealias MinutesBetween0And24Hours = Int

/**
 Type definition for the MonitorList field.
 */
public typealias MonitorList = [Monitor]

/**
 Type definition for the Name field.
 */
public typealias Name = String

/**
 Type definition for the NextToken field.
 */
public typealias NextToken = String

/**
 Type definition for the Percentage field.
 */
public typealias Percentage = Double

/**
 Enumeration restricting the values of the ReplicateTo field.
 */
public enum ReplicateTo: String, Codable, CustomStringConvertible {
    case none = "NONE"
    case ssmDocument = "SSM_DOCUMENT"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReplicateTo = .none
}

/**
 Type definition for the RoleArn field.
 */
public typealias RoleArn = String

/**
 Type definition for the StringWithLengthBetween0And32768 field.
 */
public typealias StringWithLengthBetween0And32768 = String

/**
 Type definition for the StringWithLengthBetween1And2048 field.
 */
public typealias StringWithLengthBetween1And2048 = String

/**
 Type definition for the StringWithLengthBetween1And255 field.
 */
public typealias StringWithLengthBetween1And255 = String

/**
 Type definition for the StringWithLengthBetween1And64 field.
 */
public typealias StringWithLengthBetween1And64 = String

/**
 Type definition for the TagKey field.
 */
public typealias TagKey = String

/**
 Type definition for the TagKeyList field.
 */
public typealias TagKeyList = [TagKey]

/**
 Type definition for the TagMap field.
 */
public typealias TagMap = [TagKey: TagValue]

/**
 Type definition for the TagValue field.
 */
public typealias TagValue = String

/**
 Enumeration restricting the values of the TriggeredBy field.
 */
public enum TriggeredBy: String, Codable, CustomStringConvertible {
    case appconfig = "APPCONFIG"
    case cloudwatchAlarm = "CLOUDWATCH_ALARM"
    case internalError = "INTERNAL_ERROR"
    case user = "USER"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TriggeredBy = .appconfig
}

/**
 Type definition for the Uri field.
 */
public typealias Uri = String

/**
 Type definition for the ValidatorList field.
 */
public typealias ValidatorList = [Validator]

/**
 Enumeration restricting the values of the ValidatorType field.
 */
public enum ValidatorType: String, Codable, CustomStringConvertible {
    case jsonSchema = "JSON_SCHEMA"
    case lambda = "LAMBDA"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ValidatorType = .jsonSchema
}

/**
 Type definition for the ValidatorTypeList field.
 */
public typealias ValidatorTypeList = [ValidatorType]

/**
 Type definition for the Version field.
 */
public typealias Version = String

/**
 Validation for the Arn field.
*/
extension AppConfigModel.Arn {
    public func validateAsArn() throws {
        if self.count < 20 {
            throw AppConfigError.validationError(reason: "The provided value to Arn violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw AppConfigError.validationError(reason: "The provided value to Arn violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "arn:(aws[a-zA-Z-]*)?:[a-z]+:([a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1})?:(\\d{12})?:[a-zA-Z0-9-_/:.]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw AppConfigError.validationError(
                    reason: "The provided value to Arn violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ConfigurationProfileType field.
*/
extension AppConfigModel.ConfigurationProfileType {
    public func validateAsConfigurationProfileType() throws {
        guard let matchingRange = self.range(of: "^[a-zA-Z\\.]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw AppConfigError.validationError(
                    reason: "The provided value to ConfigurationProfileType violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the DeploymentStrategyId field.
*/
extension AppConfigModel.DeploymentStrategyId {
    public func validateAsDeploymentStrategyId() throws {
        guard let matchingRange = self.range(of: "(^[a-z0-9]{4,7}$|^AppConfig\\.[A-Za-z0-9]{9,40}$)", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw AppConfigError.validationError(
                    reason: "The provided value to DeploymentStrategyId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the Description field.
*/
extension AppConfigModel.Description {
    public func validateAsDescription() throws {
        if self.count < 0 {
            throw AppConfigError.validationError(reason: "The provided value to Description violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw AppConfigError.validationError(reason: "The provided value to Description violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the GrowthFactor field.
*/
extension AppConfigModel.GrowthFactor {
    public func validateAsGrowthFactor() throws {
        if self < 1.0 {
            throw AppConfigError.validationError(reason: "The provided value to GrowthFactor violated the minimum range constraint.")
        }

        if self > 100.0 {
            throw AppConfigError.validationError(reason: "The provided value to GrowthFactor violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the Id field.
*/
extension AppConfigModel.Id {
    public func validateAsId() throws {
        guard let matchingRange = self.range(of: "[a-z0-9]{4,7}", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw AppConfigError.validationError(
                    reason: "The provided value to Id violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the MaxResults field.
*/
extension AppConfigModel.MaxResults {
    public func validateAsMaxResults() throws {
        if self < 1 {
            throw AppConfigError.validationError(reason: "The provided value to MaxResults violated the minimum range constraint.")
        }

        if self > 50 {
            throw AppConfigError.validationError(reason: "The provided value to MaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the MinutesBetween0And24Hours field.
*/
extension AppConfigModel.MinutesBetween0And24Hours {
    public func validateAsMinutesBetween0And24Hours() throws {
        if self < 0 {
            throw AppConfigError.validationError(reason: "The provided value to MinutesBetween0And24Hours violated the minimum range constraint.")
        }

        if self > 1440 {
            throw AppConfigError.validationError(reason: "The provided value to MinutesBetween0And24Hours violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the MonitorList field.
*/
extension Array where Element == AppConfigModel.Monitor {
    public func validateAsMonitorList() throws {
        if self.count < 0 {
            throw AppConfigError.validationError(reason: "The provided value to MonitorList violated the minimum length constraint.")
        }

        if self.count > 5 {
            throw AppConfigError.validationError(reason: "The provided value to MonitorList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Name field.
*/
extension AppConfigModel.Name {
    public func validateAsName() throws {
        if self.count < 1 {
            throw AppConfigError.validationError(reason: "The provided value to Name violated the minimum length constraint.")
        }

        if self.count > 64 {
            throw AppConfigError.validationError(reason: "The provided value to Name violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the NextToken field.
*/
extension AppConfigModel.NextToken {
    public func validateAsNextToken() throws {
        if self.count < 1 {
            throw AppConfigError.validationError(reason: "The provided value to NextToken violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw AppConfigError.validationError(reason: "The provided value to NextToken violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Percentage field.
*/
extension AppConfigModel.Percentage {
    public func validateAsPercentage() throws {
        if self < 1.0 {
            throw AppConfigError.validationError(reason: "The provided value to Percentage violated the minimum range constraint.")
        }

        if self > 100.0 {
            throw AppConfigError.validationError(reason: "The provided value to Percentage violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the RoleArn field.
*/
extension AppConfigModel.RoleArn {
    public func validateAsRoleArn() throws {
        if self.count < 20 {
            throw AppConfigError.validationError(reason: "The provided value to RoleArn violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw AppConfigError.validationError(reason: "The provided value to RoleArn violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^((arn):(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov):(iam)::\\d{12}:role[/].*)$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw AppConfigError.validationError(
                    reason: "The provided value to RoleArn violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the StringWithLengthBetween0And32768 field.
*/
extension AppConfigModel.StringWithLengthBetween0And32768 {
    public func validateAsStringWithLengthBetween0And32768() throws {
        if self.count < 0 {
            throw AppConfigError.validationError(reason: "The provided value to StringWithLengthBetween0And32768 violated the minimum length constraint.")
        }

        if self.count > 32768 {
            throw AppConfigError.validationError(reason: "The provided value to StringWithLengthBetween0And32768 violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the StringWithLengthBetween1And2048 field.
*/
extension AppConfigModel.StringWithLengthBetween1And2048 {
    public func validateAsStringWithLengthBetween1And2048() throws {
        if self.count < 1 {
            throw AppConfigError.validationError(reason: "The provided value to StringWithLengthBetween1And2048 violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw AppConfigError.validationError(reason: "The provided value to StringWithLengthBetween1And2048 violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the StringWithLengthBetween1And255 field.
*/
extension AppConfigModel.StringWithLengthBetween1And255 {
    public func validateAsStringWithLengthBetween1And255() throws {
        if self.count < 1 {
            throw AppConfigError.validationError(reason: "The provided value to StringWithLengthBetween1And255 violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw AppConfigError.validationError(reason: "The provided value to StringWithLengthBetween1And255 violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the StringWithLengthBetween1And64 field.
*/
extension AppConfigModel.StringWithLengthBetween1And64 {
    public func validateAsStringWithLengthBetween1And64() throws {
        if self.count < 1 {
            throw AppConfigError.validationError(reason: "The provided value to StringWithLengthBetween1And64 violated the minimum length constraint.")
        }

        if self.count > 64 {
            throw AppConfigError.validationError(reason: "The provided value to StringWithLengthBetween1And64 violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TagKey field.
*/
extension AppConfigModel.TagKey {
    public func validateAsTagKey() throws {
        if self.count < 1 {
            throw AppConfigError.validationError(reason: "The provided value to TagKey violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw AppConfigError.validationError(reason: "The provided value to TagKey violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TagKeyList field.
*/
extension Array where Element == AppConfigModel.TagKey {
    public func validateAsTagKeyList() throws {
        if self.count < 0 {
            throw AppConfigError.validationError(reason: "The provided value to TagKeyList violated the minimum length constraint.")
        }

        if self.count > 50 {
            throw AppConfigError.validationError(reason: "The provided value to TagKeyList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TagValue field.
*/
extension AppConfigModel.TagValue {
    public func validateAsTagValue() throws {

        if self.count > 256 {
            throw AppConfigError.validationError(reason: "The provided value to TagValue violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Uri field.
*/
extension AppConfigModel.Uri {
    public func validateAsUri() throws {
        if self.count < 1 {
            throw AppConfigError.validationError(reason: "The provided value to Uri violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw AppConfigError.validationError(reason: "The provided value to Uri violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ValidatorList field.
*/
extension Array where Element == AppConfigModel.Validator {
    public func validateAsValidatorList() throws {
        if self.count < 0 {
            throw AppConfigError.validationError(reason: "The provided value to ValidatorList violated the minimum length constraint.")
        }

        if self.count > 2 {
            throw AppConfigError.validationError(reason: "The provided value to ValidatorList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ValidatorTypeList field.
*/
extension Array where Element == AppConfigModel.ValidatorType {
    public func validateAsValidatorTypeList() throws {
        if self.count < 0 {
            throw AppConfigError.validationError(reason: "The provided value to ValidatorTypeList violated the minimum length constraint.")
        }

        if self.count > 2 {
            throw AppConfigError.validationError(reason: "The provided value to ValidatorTypeList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Version field.
*/
extension AppConfigModel.Version {
    public func validateAsVersion() throws {
        if self.count < 1 {
            throw AppConfigError.validationError(reason: "The provided value to Version violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw AppConfigError.validationError(reason: "The provided value to Version violated the maximum length constraint.")
        }
    }
}
