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
// CodePipelineModelDefaultInstances.swift
// CodePipelineModel
//

import Foundation

public extension AWSSessionCredentials {
    /**
     Default instance of the AWSSessionCredentials structure.
     */
    static let __default: CodePipelineModel.AWSSessionCredentials = {
        let defaultInstance = CodePipelineModel.AWSSessionCredentials(
            accessKeyId: "value",
            secretAccessKey: "value",
            sessionToken: "value")

        return defaultInstance
    }()
}

public extension AcknowledgeJobInput {
    /**
     Default instance of the AcknowledgeJobInput structure.
     */
    static let __default: CodePipelineModel.AcknowledgeJobInput = {
        let defaultInstance = CodePipelineModel.AcknowledgeJobInput(
            jobId: "",
            nonce: "0")

        return defaultInstance
    }()
}

public extension AcknowledgeJobOutput {
    /**
     Default instance of the AcknowledgeJobOutput structure.
     */
    static let __default: CodePipelineModel.AcknowledgeJobOutput = {
        let defaultInstance = CodePipelineModel.AcknowledgeJobOutput(
            status: nil)

        return defaultInstance
    }()
}

public extension AcknowledgeThirdPartyJobInput {
    /**
     Default instance of the AcknowledgeThirdPartyJobInput structure.
     */
    static let __default: CodePipelineModel.AcknowledgeThirdPartyJobInput = {
        let defaultInstance = CodePipelineModel.AcknowledgeThirdPartyJobInput(
            clientToken: "0",
            jobId: "0",
            nonce: "0")

        return defaultInstance
    }()
}

public extension AcknowledgeThirdPartyJobOutput {
    /**
     Default instance of the AcknowledgeThirdPartyJobOutput structure.
     */
    static let __default: CodePipelineModel.AcknowledgeThirdPartyJobOutput = {
        let defaultInstance = CodePipelineModel.AcknowledgeThirdPartyJobOutput(
            status: nil)

        return defaultInstance
    }()
}

public extension ActionConfiguration {
    /**
     Default instance of the ActionConfiguration structure.
     */
    static let __default: CodePipelineModel.ActionConfiguration = {
        let defaultInstance = CodePipelineModel.ActionConfiguration(
            configuration: nil)

        return defaultInstance
    }()
}

public extension ActionConfigurationProperty {
    /**
     Default instance of the ActionConfigurationProperty structure.
     */
    static let __default: CodePipelineModel.ActionConfigurationProperty = {
        let defaultInstance = CodePipelineModel.ActionConfigurationProperty(
            description: nil,
            key: false,
            name: "0",
            queryable: nil,
            required: false,
            secret: false,
            type: nil)

        return defaultInstance
    }()
}

public extension ActionContext {
    /**
     Default instance of the ActionContext structure.
     */
    static let __default: CodePipelineModel.ActionContext = {
        let defaultInstance = CodePipelineModel.ActionContext(
            actionExecutionId: nil,
            name: nil)

        return defaultInstance
    }()
}

public extension ActionDeclaration {
    /**
     Default instance of the ActionDeclaration structure.
     */
    static let __default: CodePipelineModel.ActionDeclaration = {
        let defaultInstance = CodePipelineModel.ActionDeclaration(
            actionTypeId: ActionTypeId.__default,
            configuration: nil,
            inputArtifacts: nil,
            name: "0",
            namespace: nil,
            outputArtifacts: nil,
            region: nil,
            roleArn: nil,
            runOrder: nil)

        return defaultInstance
    }()
}

public extension ActionExecution {
    /**
     Default instance of the ActionExecution structure.
     */
    static let __default: CodePipelineModel.ActionExecution = {
        let defaultInstance = CodePipelineModel.ActionExecution(
            actionExecutionId: nil,
            errorDetails: nil,
            externalExecutionId: nil,
            externalExecutionUrl: nil,
            lastStatusChange: nil,
            lastUpdatedBy: nil,
            percentComplete: nil,
            status: nil,
            summary: nil,
            token: nil)

        return defaultInstance
    }()
}

public extension ActionExecutionDetail {
    /**
     Default instance of the ActionExecutionDetail structure.
     */
    static let __default: CodePipelineModel.ActionExecutionDetail = {
        let defaultInstance = CodePipelineModel.ActionExecutionDetail(
            actionExecutionId: nil,
            actionName: nil,
            input: nil,
            lastUpdateTime: nil,
            output: nil,
            pipelineExecutionId: nil,
            pipelineVersion: nil,
            stageName: nil,
            startTime: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension ActionExecutionFilter {
    /**
     Default instance of the ActionExecutionFilter structure.
     */
    static let __default: CodePipelineModel.ActionExecutionFilter = {
        let defaultInstance = CodePipelineModel.ActionExecutionFilter(
            pipelineExecutionId: nil)

        return defaultInstance
    }()
}

public extension ActionExecutionInput {
    /**
     Default instance of the ActionExecutionInput structure.
     */
    static let __default: CodePipelineModel.ActionExecutionInput = {
        let defaultInstance = CodePipelineModel.ActionExecutionInput(
            actionTypeId: nil,
            configuration: nil,
            inputArtifacts: nil,
            namespace: nil,
            region: nil,
            resolvedConfiguration: nil,
            roleArn: nil)

        return defaultInstance
    }()
}

public extension ActionExecutionOutput {
    /**
     Default instance of the ActionExecutionOutput structure.
     */
    static let __default: CodePipelineModel.ActionExecutionOutput = {
        let defaultInstance = CodePipelineModel.ActionExecutionOutput(
            executionResult: nil,
            outputArtifacts: nil,
            outputVariables: nil)

        return defaultInstance
    }()
}

public extension ActionExecutionResult {
    /**
     Default instance of the ActionExecutionResult structure.
     */
    static let __default: CodePipelineModel.ActionExecutionResult = {
        let defaultInstance = CodePipelineModel.ActionExecutionResult(
            externalExecutionId: nil,
            externalExecutionSummary: nil,
            externalExecutionUrl: nil)

        return defaultInstance
    }()
}

public extension ActionNotFoundException {
    /**
     Default instance of the ActionNotFoundException structure.
     */
    static let __default: CodePipelineModel.ActionNotFoundException = {
        let defaultInstance = CodePipelineModel.ActionNotFoundException()

        return defaultInstance
    }()
}

public extension ActionRevision {
    /**
     Default instance of the ActionRevision structure.
     */
    static let __default: CodePipelineModel.ActionRevision = {
        let defaultInstance = CodePipelineModel.ActionRevision(
            created: 1.52953091375E9,
            revisionChangeId: "0",
            revisionId: "0")

        return defaultInstance
    }()
}

public extension ActionState {
    /**
     Default instance of the ActionState structure.
     */
    static let __default: CodePipelineModel.ActionState = {
        let defaultInstance = CodePipelineModel.ActionState(
            actionName: nil,
            currentRevision: nil,
            entityUrl: nil,
            latestExecution: nil,
            revisionUrl: nil)

        return defaultInstance
    }()
}

public extension ActionType {
    /**
     Default instance of the ActionType structure.
     */
    static let __default: CodePipelineModel.ActionType = {
        let defaultInstance = CodePipelineModel.ActionType(
            actionConfigurationProperties: nil,
            id: ActionTypeId.__default,
            inputArtifactDetails: ArtifactDetails.__default,
            outputArtifactDetails: ArtifactDetails.__default,
            settings: nil)

        return defaultInstance
    }()
}

public extension ActionTypeAlreadyExistsException {
    /**
     Default instance of the ActionTypeAlreadyExistsException structure.
     */
    static let __default: CodePipelineModel.ActionTypeAlreadyExistsException = {
        let defaultInstance = CodePipelineModel.ActionTypeAlreadyExistsException()

        return defaultInstance
    }()
}

public extension ActionTypeArtifactDetails {
    /**
     Default instance of the ActionTypeArtifactDetails structure.
     */
    static let __default: CodePipelineModel.ActionTypeArtifactDetails = {
        let defaultInstance = CodePipelineModel.ActionTypeArtifactDetails(
            maximumCount: 0,
            minimumCount: 0)

        return defaultInstance
    }()
}

public extension ActionTypeDeclaration {
    /**
     Default instance of the ActionTypeDeclaration structure.
     */
    static let __default: CodePipelineModel.ActionTypeDeclaration = {
        let defaultInstance = CodePipelineModel.ActionTypeDeclaration(
            description: nil,
            executor: ActionTypeExecutor.__default,
            id: ActionTypeIdentifier.__default,
            inputArtifactDetails: ActionTypeArtifactDetails.__default,
            outputArtifactDetails: ActionTypeArtifactDetails.__default,
            permissions: nil,
            properties: nil,
            urls: nil)

        return defaultInstance
    }()
}

public extension ActionTypeExecutor {
    /**
     Default instance of the ActionTypeExecutor structure.
     */
    static let __default: CodePipelineModel.ActionTypeExecutor = {
        let defaultInstance = CodePipelineModel.ActionTypeExecutor(
            configuration: ExecutorConfiguration.__default,
            jobTimeout: nil,
            policyStatementsTemplate: nil,
            type: .__default)

        return defaultInstance
    }()
}

public extension ActionTypeId {
    /**
     Default instance of the ActionTypeId structure.
     */
    static let __default: CodePipelineModel.ActionTypeId = {
        let defaultInstance = CodePipelineModel.ActionTypeId(
            category: .__default,
            owner: .__default,
            provider: "0",
            version: "0")

        return defaultInstance
    }()
}

public extension ActionTypeIdentifier {
    /**
     Default instance of the ActionTypeIdentifier structure.
     */
    static let __default: CodePipelineModel.ActionTypeIdentifier = {
        let defaultInstance = CodePipelineModel.ActionTypeIdentifier(
            category: .__default,
            owner: "",
            provider: "0",
            version: "0")

        return defaultInstance
    }()
}

public extension ActionTypeNotFoundException {
    /**
     Default instance of the ActionTypeNotFoundException structure.
     */
    static let __default: CodePipelineModel.ActionTypeNotFoundException = {
        let defaultInstance = CodePipelineModel.ActionTypeNotFoundException()

        return defaultInstance
    }()
}

public extension ActionTypePermissions {
    /**
     Default instance of the ActionTypePermissions structure.
     */
    static let __default: CodePipelineModel.ActionTypePermissions = {
        let defaultInstance = CodePipelineModel.ActionTypePermissions(
            allowedAccounts: [""])

        return defaultInstance
    }()
}

public extension ActionTypeProperty {
    /**
     Default instance of the ActionTypeProperty structure.
     */
    static let __default: CodePipelineModel.ActionTypeProperty = {
        let defaultInstance = CodePipelineModel.ActionTypeProperty(
            description: nil,
            key: false,
            name: "0",
            noEcho: false,
            optional: false,
            queryable: nil)

        return defaultInstance
    }()
}

public extension ActionTypeSettings {
    /**
     Default instance of the ActionTypeSettings structure.
     */
    static let __default: CodePipelineModel.ActionTypeSettings = {
        let defaultInstance = CodePipelineModel.ActionTypeSettings(
            entityUrlTemplate: nil,
            executionUrlTemplate: nil,
            revisionUrlTemplate: nil,
            thirdPartyConfigurationUrl: nil)

        return defaultInstance
    }()
}

public extension ActionTypeUrls {
    /**
     Default instance of the ActionTypeUrls structure.
     */
    static let __default: CodePipelineModel.ActionTypeUrls = {
        let defaultInstance = CodePipelineModel.ActionTypeUrls(
            configurationUrl: nil,
            entityUrlTemplate: nil,
            executionUrlTemplate: nil,
            revisionUrlTemplate: nil)

        return defaultInstance
    }()
}

public extension ApprovalAlreadyCompletedException {
    /**
     Default instance of the ApprovalAlreadyCompletedException structure.
     */
    static let __default: CodePipelineModel.ApprovalAlreadyCompletedException = {
        let defaultInstance = CodePipelineModel.ApprovalAlreadyCompletedException()

        return defaultInstance
    }()
}

public extension ApprovalResult {
    /**
     Default instance of the ApprovalResult structure.
     */
    static let __default: CodePipelineModel.ApprovalResult = {
        let defaultInstance = CodePipelineModel.ApprovalResult(
            status: .__default,
            summary: "")

        return defaultInstance
    }()
}

public extension Artifact {
    /**
     Default instance of the Artifact structure.
     */
    static let __default: CodePipelineModel.Artifact = {
        let defaultInstance = CodePipelineModel.Artifact(
            location: nil,
            name: nil,
            revision: nil)

        return defaultInstance
    }()
}

public extension ArtifactDetail {
    /**
     Default instance of the ArtifactDetail structure.
     */
    static let __default: CodePipelineModel.ArtifactDetail = {
        let defaultInstance = CodePipelineModel.ArtifactDetail(
            name: nil,
            s3location: nil)

        return defaultInstance
    }()
}

public extension ArtifactDetails {
    /**
     Default instance of the ArtifactDetails structure.
     */
    static let __default: CodePipelineModel.ArtifactDetails = {
        let defaultInstance = CodePipelineModel.ArtifactDetails(
            maximumCount: 0,
            minimumCount: 0)

        return defaultInstance
    }()
}

public extension ArtifactLocation {
    /**
     Default instance of the ArtifactLocation structure.
     */
    static let __default: CodePipelineModel.ArtifactLocation = {
        let defaultInstance = CodePipelineModel.ArtifactLocation(
            s3Location: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension ArtifactRevision {
    /**
     Default instance of the ArtifactRevision structure.
     */
    static let __default: CodePipelineModel.ArtifactRevision = {
        let defaultInstance = CodePipelineModel.ArtifactRevision(
            created: nil,
            name: nil,
            revisionChangeIdentifier: nil,
            revisionId: nil,
            revisionSummary: nil,
            revisionUrl: nil)

        return defaultInstance
    }()
}

public extension ArtifactStore {
    /**
     Default instance of the ArtifactStore structure.
     */
    static let __default: CodePipelineModel.ArtifactStore = {
        let defaultInstance = CodePipelineModel.ArtifactStore(
            encryptionKey: nil,
            location: "012",
            type: .__default)

        return defaultInstance
    }()
}

public extension BlockerDeclaration {
    /**
     Default instance of the BlockerDeclaration structure.
     */
    static let __default: CodePipelineModel.BlockerDeclaration = {
        let defaultInstance = CodePipelineModel.BlockerDeclaration(
            name: "0",
            type: .__default)

        return defaultInstance
    }()
}

public extension ConcurrentModificationException {
    /**
     Default instance of the ConcurrentModificationException structure.
     */
    static let __default: CodePipelineModel.ConcurrentModificationException = {
        let defaultInstance = CodePipelineModel.ConcurrentModificationException(
            message: nil)

        return defaultInstance
    }()
}

public extension ConflictException {
    /**
     Default instance of the ConflictException structure.
     */
    static let __default: CodePipelineModel.ConflictException = {
        let defaultInstance = CodePipelineModel.ConflictException(
            message: nil)

        return defaultInstance
    }()
}

public extension CreateCustomActionTypeInput {
    /**
     Default instance of the CreateCustomActionTypeInput structure.
     */
    static let __default: CodePipelineModel.CreateCustomActionTypeInput = {
        let defaultInstance = CodePipelineModel.CreateCustomActionTypeInput(
            category: .__default,
            configurationProperties: nil,
            inputArtifactDetails: ArtifactDetails.__default,
            outputArtifactDetails: ArtifactDetails.__default,
            provider: "0",
            settings: nil,
            tags: nil,
            version: "0")

        return defaultInstance
    }()
}

public extension CreateCustomActionTypeOutput {
    /**
     Default instance of the CreateCustomActionTypeOutput structure.
     */
    static let __default: CodePipelineModel.CreateCustomActionTypeOutput = {
        let defaultInstance = CodePipelineModel.CreateCustomActionTypeOutput(
            actionType: ActionType.__default,
            tags: nil)

        return defaultInstance
    }()
}

public extension CreatePipelineInput {
    /**
     Default instance of the CreatePipelineInput structure.
     */
    static let __default: CodePipelineModel.CreatePipelineInput = {
        let defaultInstance = CodePipelineModel.CreatePipelineInput(
            pipeline: PipelineDeclaration.__default,
            tags: nil)

        return defaultInstance
    }()
}

public extension CreatePipelineOutput {
    /**
     Default instance of the CreatePipelineOutput structure.
     */
    static let __default: CodePipelineModel.CreatePipelineOutput = {
        let defaultInstance = CodePipelineModel.CreatePipelineOutput(
            pipeline: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension CurrentRevision {
    /**
     Default instance of the CurrentRevision structure.
     */
    static let __default: CodePipelineModel.CurrentRevision = {
        let defaultInstance = CodePipelineModel.CurrentRevision(
            changeIdentifier: "0",
            created: nil,
            revision: "0",
            revisionSummary: nil)

        return defaultInstance
    }()
}

public extension DeleteCustomActionTypeInput {
    /**
     Default instance of the DeleteCustomActionTypeInput structure.
     */
    static let __default: CodePipelineModel.DeleteCustomActionTypeInput = {
        let defaultInstance = CodePipelineModel.DeleteCustomActionTypeInput(
            category: .__default,
            provider: "0",
            version: "0")

        return defaultInstance
    }()
}

public extension DeletePipelineInput {
    /**
     Default instance of the DeletePipelineInput structure.
     */
    static let __default: CodePipelineModel.DeletePipelineInput = {
        let defaultInstance = CodePipelineModel.DeletePipelineInput(
            name: "0")

        return defaultInstance
    }()
}

public extension DeleteWebhookInput {
    /**
     Default instance of the DeleteWebhookInput structure.
     */
    static let __default: CodePipelineModel.DeleteWebhookInput = {
        let defaultInstance = CodePipelineModel.DeleteWebhookInput(
            name: "0")

        return defaultInstance
    }()
}

public extension DeleteWebhookOutput {
    /**
     Default instance of the DeleteWebhookOutput structure.
     */
    static let __default: CodePipelineModel.DeleteWebhookOutput = {
        let defaultInstance = CodePipelineModel.DeleteWebhookOutput()

        return defaultInstance
    }()
}

public extension DeregisterWebhookWithThirdPartyInput {
    /**
     Default instance of the DeregisterWebhookWithThirdPartyInput structure.
     */
    static let __default: CodePipelineModel.DeregisterWebhookWithThirdPartyInput = {
        let defaultInstance = CodePipelineModel.DeregisterWebhookWithThirdPartyInput(
            webhookName: nil)

        return defaultInstance
    }()
}

public extension DeregisterWebhookWithThirdPartyOutput {
    /**
     Default instance of the DeregisterWebhookWithThirdPartyOutput structure.
     */
    static let __default: CodePipelineModel.DeregisterWebhookWithThirdPartyOutput = {
        let defaultInstance = CodePipelineModel.DeregisterWebhookWithThirdPartyOutput()

        return defaultInstance
    }()
}

public extension DisableStageTransitionInput {
    /**
     Default instance of the DisableStageTransitionInput structure.
     */
    static let __default: CodePipelineModel.DisableStageTransitionInput = {
        let defaultInstance = CodePipelineModel.DisableStageTransitionInput(
            pipelineName: "0",
            reason: "0",
            stageName: "0",
            transitionType: .__default)

        return defaultInstance
    }()
}

public extension DuplicatedStopRequestException {
    /**
     Default instance of the DuplicatedStopRequestException structure.
     */
    static let __default: CodePipelineModel.DuplicatedStopRequestException = {
        let defaultInstance = CodePipelineModel.DuplicatedStopRequestException(
            message: nil)

        return defaultInstance
    }()
}

public extension EnableStageTransitionInput {
    /**
     Default instance of the EnableStageTransitionInput structure.
     */
    static let __default: CodePipelineModel.EnableStageTransitionInput = {
        let defaultInstance = CodePipelineModel.EnableStageTransitionInput(
            pipelineName: "0",
            stageName: "0",
            transitionType: .__default)

        return defaultInstance
    }()
}

public extension EncryptionKey {
    /**
     Default instance of the EncryptionKey structure.
     */
    static let __default: CodePipelineModel.EncryptionKey = {
        let defaultInstance = CodePipelineModel.EncryptionKey(
            id: "0",
            type: .__default)

        return defaultInstance
    }()
}

public extension ErrorDetails {
    /**
     Default instance of the ErrorDetails structure.
     */
    static let __default: CodePipelineModel.ErrorDetails = {
        let defaultInstance = CodePipelineModel.ErrorDetails(
            code: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension ExecutionDetails {
    /**
     Default instance of the ExecutionDetails structure.
     */
    static let __default: CodePipelineModel.ExecutionDetails = {
        let defaultInstance = CodePipelineModel.ExecutionDetails(
            externalExecutionId: nil,
            percentComplete: nil,
            summary: nil)

        return defaultInstance
    }()
}

public extension ExecutionTrigger {
    /**
     Default instance of the ExecutionTrigger structure.
     */
    static let __default: CodePipelineModel.ExecutionTrigger = {
        let defaultInstance = CodePipelineModel.ExecutionTrigger(
            triggerDetail: nil,
            triggerType: nil)

        return defaultInstance
    }()
}

public extension ExecutorConfiguration {
    /**
     Default instance of the ExecutorConfiguration structure.
     */
    static let __default: CodePipelineModel.ExecutorConfiguration = {
        let defaultInstance = CodePipelineModel.ExecutorConfiguration(
            jobWorkerExecutorConfiguration: nil,
            lambdaExecutorConfiguration: nil)

        return defaultInstance
    }()
}

public extension FailureDetails {
    /**
     Default instance of the FailureDetails structure.
     */
    static let __default: CodePipelineModel.FailureDetails = {
        let defaultInstance = CodePipelineModel.FailureDetails(
            externalExecutionId: nil,
            message: "0",
            type: .__default)

        return defaultInstance
    }()
}

public extension GetActionTypeInput {
    /**
     Default instance of the GetActionTypeInput structure.
     */
    static let __default: CodePipelineModel.GetActionTypeInput = {
        let defaultInstance = CodePipelineModel.GetActionTypeInput(
            category: .__default,
            owner: "",
            provider: "0",
            version: "0")

        return defaultInstance
    }()
}

public extension GetActionTypeOutput {
    /**
     Default instance of the GetActionTypeOutput structure.
     */
    static let __default: CodePipelineModel.GetActionTypeOutput = {
        let defaultInstance = CodePipelineModel.GetActionTypeOutput(
            actionType: nil)

        return defaultInstance
    }()
}

public extension GetJobDetailsInput {
    /**
     Default instance of the GetJobDetailsInput structure.
     */
    static let __default: CodePipelineModel.GetJobDetailsInput = {
        let defaultInstance = CodePipelineModel.GetJobDetailsInput(
            jobId: "")

        return defaultInstance
    }()
}

public extension GetJobDetailsOutput {
    /**
     Default instance of the GetJobDetailsOutput structure.
     */
    static let __default: CodePipelineModel.GetJobDetailsOutput = {
        let defaultInstance = CodePipelineModel.GetJobDetailsOutput(
            jobDetails: nil)

        return defaultInstance
    }()
}

public extension GetPipelineExecutionInput {
    /**
     Default instance of the GetPipelineExecutionInput structure.
     */
    static let __default: CodePipelineModel.GetPipelineExecutionInput = {
        let defaultInstance = CodePipelineModel.GetPipelineExecutionInput(
            pipelineExecutionId: "",
            pipelineName: "0")

        return defaultInstance
    }()
}

public extension GetPipelineExecutionOutput {
    /**
     Default instance of the GetPipelineExecutionOutput structure.
     */
    static let __default: CodePipelineModel.GetPipelineExecutionOutput = {
        let defaultInstance = CodePipelineModel.GetPipelineExecutionOutput(
            pipelineExecution: nil)

        return defaultInstance
    }()
}

public extension GetPipelineInput {
    /**
     Default instance of the GetPipelineInput structure.
     */
    static let __default: CodePipelineModel.GetPipelineInput = {
        let defaultInstance = CodePipelineModel.GetPipelineInput(
            name: "0",
            version: nil)

        return defaultInstance
    }()
}

public extension GetPipelineOutput {
    /**
     Default instance of the GetPipelineOutput structure.
     */
    static let __default: CodePipelineModel.GetPipelineOutput = {
        let defaultInstance = CodePipelineModel.GetPipelineOutput(
            metadata: nil,
            pipeline: nil)

        return defaultInstance
    }()
}

public extension GetPipelineStateInput {
    /**
     Default instance of the GetPipelineStateInput structure.
     */
    static let __default: CodePipelineModel.GetPipelineStateInput = {
        let defaultInstance = CodePipelineModel.GetPipelineStateInput(
            name: "0")

        return defaultInstance
    }()
}

public extension GetPipelineStateOutput {
    /**
     Default instance of the GetPipelineStateOutput structure.
     */
    static let __default: CodePipelineModel.GetPipelineStateOutput = {
        let defaultInstance = CodePipelineModel.GetPipelineStateOutput(
            created: nil,
            pipelineName: nil,
            pipelineVersion: nil,
            stageStates: nil,
            updated: nil)

        return defaultInstance
    }()
}

public extension GetThirdPartyJobDetailsInput {
    /**
     Default instance of the GetThirdPartyJobDetailsInput structure.
     */
    static let __default: CodePipelineModel.GetThirdPartyJobDetailsInput = {
        let defaultInstance = CodePipelineModel.GetThirdPartyJobDetailsInput(
            clientToken: "0",
            jobId: "0")

        return defaultInstance
    }()
}

public extension GetThirdPartyJobDetailsOutput {
    /**
     Default instance of the GetThirdPartyJobDetailsOutput structure.
     */
    static let __default: CodePipelineModel.GetThirdPartyJobDetailsOutput = {
        let defaultInstance = CodePipelineModel.GetThirdPartyJobDetailsOutput(
            jobDetails: nil)

        return defaultInstance
    }()
}

public extension GitConfiguration {
    /**
     Default instance of the GitConfiguration structure.
     */
    static let __default: CodePipelineModel.GitConfiguration = {
        let defaultInstance = CodePipelineModel.GitConfiguration(
            push: nil,
            sourceActionName: "0")

        return defaultInstance
    }()
}

public extension GitPushFilter {
    /**
     Default instance of the GitPushFilter structure.
     */
    static let __default: CodePipelineModel.GitPushFilter = {
        let defaultInstance = CodePipelineModel.GitPushFilter(
            tags: nil)

        return defaultInstance
    }()
}

public extension GitTagFilterCriteria {
    /**
     Default instance of the GitTagFilterCriteria structure.
     */
    static let __default: CodePipelineModel.GitTagFilterCriteria = {
        let defaultInstance = CodePipelineModel.GitTagFilterCriteria(
            excludes: nil,
            includes: nil)

        return defaultInstance
    }()
}

public extension InputArtifact {
    /**
     Default instance of the InputArtifact structure.
     */
    static let __default: CodePipelineModel.InputArtifact = {
        let defaultInstance = CodePipelineModel.InputArtifact(
            name: "0")

        return defaultInstance
    }()
}

public extension InvalidActionDeclarationException {
    /**
     Default instance of the InvalidActionDeclarationException structure.
     */
    static let __default: CodePipelineModel.InvalidActionDeclarationException = {
        let defaultInstance = CodePipelineModel.InvalidActionDeclarationException()

        return defaultInstance
    }()
}

public extension InvalidApprovalTokenException {
    /**
     Default instance of the InvalidApprovalTokenException structure.
     */
    static let __default: CodePipelineModel.InvalidApprovalTokenException = {
        let defaultInstance = CodePipelineModel.InvalidApprovalTokenException()

        return defaultInstance
    }()
}

public extension InvalidArnException {
    /**
     Default instance of the InvalidArnException structure.
     */
    static let __default: CodePipelineModel.InvalidArnException = {
        let defaultInstance = CodePipelineModel.InvalidArnException(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidBlockerDeclarationException {
    /**
     Default instance of the InvalidBlockerDeclarationException structure.
     */
    static let __default: CodePipelineModel.InvalidBlockerDeclarationException = {
        let defaultInstance = CodePipelineModel.InvalidBlockerDeclarationException()

        return defaultInstance
    }()
}

public extension InvalidClientTokenException {
    /**
     Default instance of the InvalidClientTokenException structure.
     */
    static let __default: CodePipelineModel.InvalidClientTokenException = {
        let defaultInstance = CodePipelineModel.InvalidClientTokenException()

        return defaultInstance
    }()
}

public extension InvalidJobException {
    /**
     Default instance of the InvalidJobException structure.
     */
    static let __default: CodePipelineModel.InvalidJobException = {
        let defaultInstance = CodePipelineModel.InvalidJobException()

        return defaultInstance
    }()
}

public extension InvalidJobStateException {
    /**
     Default instance of the InvalidJobStateException structure.
     */
    static let __default: CodePipelineModel.InvalidJobStateException = {
        let defaultInstance = CodePipelineModel.InvalidJobStateException()

        return defaultInstance
    }()
}

public extension InvalidNextTokenException {
    /**
     Default instance of the InvalidNextTokenException structure.
     */
    static let __default: CodePipelineModel.InvalidNextTokenException = {
        let defaultInstance = CodePipelineModel.InvalidNextTokenException()

        return defaultInstance
    }()
}

public extension InvalidNonceException {
    /**
     Default instance of the InvalidNonceException structure.
     */
    static let __default: CodePipelineModel.InvalidNonceException = {
        let defaultInstance = CodePipelineModel.InvalidNonceException()

        return defaultInstance
    }()
}

public extension InvalidStageDeclarationException {
    /**
     Default instance of the InvalidStageDeclarationException structure.
     */
    static let __default: CodePipelineModel.InvalidStageDeclarationException = {
        let defaultInstance = CodePipelineModel.InvalidStageDeclarationException()

        return defaultInstance
    }()
}

public extension InvalidStructureException {
    /**
     Default instance of the InvalidStructureException structure.
     */
    static let __default: CodePipelineModel.InvalidStructureException = {
        let defaultInstance = CodePipelineModel.InvalidStructureException()

        return defaultInstance
    }()
}

public extension InvalidTagsException {
    /**
     Default instance of the InvalidTagsException structure.
     */
    static let __default: CodePipelineModel.InvalidTagsException = {
        let defaultInstance = CodePipelineModel.InvalidTagsException(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidWebhookAuthenticationParametersException {
    /**
     Default instance of the InvalidWebhookAuthenticationParametersException structure.
     */
    static let __default: CodePipelineModel.InvalidWebhookAuthenticationParametersException = {
        let defaultInstance = CodePipelineModel.InvalidWebhookAuthenticationParametersException()

        return defaultInstance
    }()
}

public extension InvalidWebhookFilterPatternException {
    /**
     Default instance of the InvalidWebhookFilterPatternException structure.
     */
    static let __default: CodePipelineModel.InvalidWebhookFilterPatternException = {
        let defaultInstance = CodePipelineModel.InvalidWebhookFilterPatternException()

        return defaultInstance
    }()
}

public extension Job {
    /**
     Default instance of the Job structure.
     */
    static let __default: CodePipelineModel.Job = {
        let defaultInstance = CodePipelineModel.Job(
            accountId: nil,
            data: nil,
            id: nil,
            nonce: nil)

        return defaultInstance
    }()
}

public extension JobData {
    /**
     Default instance of the JobData structure.
     */
    static let __default: CodePipelineModel.JobData = {
        let defaultInstance = CodePipelineModel.JobData(
            actionConfiguration: nil,
            actionTypeId: nil,
            artifactCredentials: nil,
            continuationToken: nil,
            encryptionKey: nil,
            inputArtifacts: nil,
            outputArtifacts: nil,
            pipelineContext: nil)

        return defaultInstance
    }()
}

public extension JobDetails {
    /**
     Default instance of the JobDetails structure.
     */
    static let __default: CodePipelineModel.JobDetails = {
        let defaultInstance = CodePipelineModel.JobDetails(
            accountId: nil,
            data: nil,
            id: nil)

        return defaultInstance
    }()
}

public extension JobNotFoundException {
    /**
     Default instance of the JobNotFoundException structure.
     */
    static let __default: CodePipelineModel.JobNotFoundException = {
        let defaultInstance = CodePipelineModel.JobNotFoundException()

        return defaultInstance
    }()
}

public extension JobWorkerExecutorConfiguration {
    /**
     Default instance of the JobWorkerExecutorConfiguration structure.
     */
    static let __default: CodePipelineModel.JobWorkerExecutorConfiguration = {
        let defaultInstance = CodePipelineModel.JobWorkerExecutorConfiguration(
            pollingAccounts: nil,
            pollingServicePrincipals: nil)

        return defaultInstance
    }()
}

public extension LambdaExecutorConfiguration {
    /**
     Default instance of the LambdaExecutorConfiguration structure.
     */
    static let __default: CodePipelineModel.LambdaExecutorConfiguration = {
        let defaultInstance = CodePipelineModel.LambdaExecutorConfiguration(
            lambdaFunctionArn: "0")

        return defaultInstance
    }()
}

public extension LimitExceededException {
    /**
     Default instance of the LimitExceededException structure.
     */
    static let __default: CodePipelineModel.LimitExceededException = {
        let defaultInstance = CodePipelineModel.LimitExceededException()

        return defaultInstance
    }()
}

public extension ListActionExecutionsInput {
    /**
     Default instance of the ListActionExecutionsInput structure.
     */
    static let __default: CodePipelineModel.ListActionExecutionsInput = {
        let defaultInstance = CodePipelineModel.ListActionExecutionsInput(
            filter: nil,
            maxResults: nil,
            nextToken: nil,
            pipelineName: "0")

        return defaultInstance
    }()
}

public extension ListActionExecutionsOutput {
    /**
     Default instance of the ListActionExecutionsOutput structure.
     */
    static let __default: CodePipelineModel.ListActionExecutionsOutput = {
        let defaultInstance = CodePipelineModel.ListActionExecutionsOutput(
            actionExecutionDetails: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListActionTypesInput {
    /**
     Default instance of the ListActionTypesInput structure.
     */
    static let __default: CodePipelineModel.ListActionTypesInput = {
        let defaultInstance = CodePipelineModel.ListActionTypesInput(
            actionOwnerFilter: nil,
            nextToken: nil,
            regionFilter: nil)

        return defaultInstance
    }()
}

public extension ListActionTypesOutput {
    /**
     Default instance of the ListActionTypesOutput structure.
     */
    static let __default: CodePipelineModel.ListActionTypesOutput = {
        let defaultInstance = CodePipelineModel.ListActionTypesOutput(
            actionTypes: [],
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListPipelineExecutionsInput {
    /**
     Default instance of the ListPipelineExecutionsInput structure.
     */
    static let __default: CodePipelineModel.ListPipelineExecutionsInput = {
        let defaultInstance = CodePipelineModel.ListPipelineExecutionsInput(
            maxResults: nil,
            nextToken: nil,
            pipelineName: "0")

        return defaultInstance
    }()
}

public extension ListPipelineExecutionsOutput {
    /**
     Default instance of the ListPipelineExecutionsOutput structure.
     */
    static let __default: CodePipelineModel.ListPipelineExecutionsOutput = {
        let defaultInstance = CodePipelineModel.ListPipelineExecutionsOutput(
            nextToken: nil,
            pipelineExecutionSummaries: nil)

        return defaultInstance
    }()
}

public extension ListPipelinesInput {
    /**
     Default instance of the ListPipelinesInput structure.
     */
    static let __default: CodePipelineModel.ListPipelinesInput = {
        let defaultInstance = CodePipelineModel.ListPipelinesInput(
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListPipelinesOutput {
    /**
     Default instance of the ListPipelinesOutput structure.
     */
    static let __default: CodePipelineModel.ListPipelinesOutput = {
        let defaultInstance = CodePipelineModel.ListPipelinesOutput(
            nextToken: nil,
            pipelines: nil)

        return defaultInstance
    }()
}

public extension ListTagsForResourceInput {
    /**
     Default instance of the ListTagsForResourceInput structure.
     */
    static let __default: CodePipelineModel.ListTagsForResourceInput = {
        let defaultInstance = CodePipelineModel.ListTagsForResourceInput(
            maxResults: nil,
            nextToken: nil,
            resourceArn: "")

        return defaultInstance
    }()
}

public extension ListTagsForResourceOutput {
    /**
     Default instance of the ListTagsForResourceOutput structure.
     */
    static let __default: CodePipelineModel.ListTagsForResourceOutput = {
        let defaultInstance = CodePipelineModel.ListTagsForResourceOutput(
            nextToken: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension ListWebhookItem {
    /**
     Default instance of the ListWebhookItem structure.
     */
    static let __default: CodePipelineModel.ListWebhookItem = {
        let defaultInstance = CodePipelineModel.ListWebhookItem(
            arn: nil,
            definition: WebhookDefinition.__default,
            errorCode: nil,
            errorMessage: nil,
            lastTriggered: nil,
            tags: nil,
            url: "0")

        return defaultInstance
    }()
}

public extension ListWebhooksInput {
    /**
     Default instance of the ListWebhooksInput structure.
     */
    static let __default: CodePipelineModel.ListWebhooksInput = {
        let defaultInstance = CodePipelineModel.ListWebhooksInput(
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListWebhooksOutput {
    /**
     Default instance of the ListWebhooksOutput structure.
     */
    static let __default: CodePipelineModel.ListWebhooksOutput = {
        let defaultInstance = CodePipelineModel.ListWebhooksOutput(
            nextToken: nil,
            webhooks: nil)

        return defaultInstance
    }()
}

public extension NotLatestPipelineExecutionException {
    /**
     Default instance of the NotLatestPipelineExecutionException structure.
     */
    static let __default: CodePipelineModel.NotLatestPipelineExecutionException = {
        let defaultInstance = CodePipelineModel.NotLatestPipelineExecutionException()

        return defaultInstance
    }()
}

public extension OutputArtifact {
    /**
     Default instance of the OutputArtifact structure.
     */
    static let __default: CodePipelineModel.OutputArtifact = {
        let defaultInstance = CodePipelineModel.OutputArtifact(
            name: "0")

        return defaultInstance
    }()
}

public extension OutputVariablesSizeExceededException {
    /**
     Default instance of the OutputVariablesSizeExceededException structure.
     */
    static let __default: CodePipelineModel.OutputVariablesSizeExceededException = {
        let defaultInstance = CodePipelineModel.OutputVariablesSizeExceededException(
            message: nil)

        return defaultInstance
    }()
}

public extension PipelineContext {
    /**
     Default instance of the PipelineContext structure.
     */
    static let __default: CodePipelineModel.PipelineContext = {
        let defaultInstance = CodePipelineModel.PipelineContext(
            action: nil,
            pipelineArn: nil,
            pipelineExecutionId: nil,
            pipelineName: nil,
            stage: nil)

        return defaultInstance
    }()
}

public extension PipelineDeclaration {
    /**
     Default instance of the PipelineDeclaration structure.
     */
    static let __default: CodePipelineModel.PipelineDeclaration = {
        let defaultInstance = CodePipelineModel.PipelineDeclaration(
            artifactStore: nil,
            artifactStores: nil,
            name: "0",
            pipelineType: nil,
            roleArn: "",
            stages: [],
            triggers: nil,
            variables: nil,
            version: nil)

        return defaultInstance
    }()
}

public extension PipelineExecution {
    /**
     Default instance of the PipelineExecution structure.
     */
    static let __default: CodePipelineModel.PipelineExecution = {
        let defaultInstance = CodePipelineModel.PipelineExecution(
            artifactRevisions: nil,
            pipelineExecutionId: nil,
            pipelineName: nil,
            pipelineVersion: nil,
            status: nil,
            statusSummary: nil,
            trigger: nil,
            variables: nil)

        return defaultInstance
    }()
}

public extension PipelineExecutionNotFoundException {
    /**
     Default instance of the PipelineExecutionNotFoundException structure.
     */
    static let __default: CodePipelineModel.PipelineExecutionNotFoundException = {
        let defaultInstance = CodePipelineModel.PipelineExecutionNotFoundException()

        return defaultInstance
    }()
}

public extension PipelineExecutionNotStoppableException {
    /**
     Default instance of the PipelineExecutionNotStoppableException structure.
     */
    static let __default: CodePipelineModel.PipelineExecutionNotStoppableException = {
        let defaultInstance = CodePipelineModel.PipelineExecutionNotStoppableException(
            message: nil)

        return defaultInstance
    }()
}

public extension PipelineExecutionSummary {
    /**
     Default instance of the PipelineExecutionSummary structure.
     */
    static let __default: CodePipelineModel.PipelineExecutionSummary = {
        let defaultInstance = CodePipelineModel.PipelineExecutionSummary(
            lastUpdateTime: nil,
            pipelineExecutionId: nil,
            sourceRevisions: nil,
            startTime: nil,
            status: nil,
            stopTrigger: nil,
            trigger: nil)

        return defaultInstance
    }()
}

public extension PipelineMetadata {
    /**
     Default instance of the PipelineMetadata structure.
     */
    static let __default: CodePipelineModel.PipelineMetadata = {
        let defaultInstance = CodePipelineModel.PipelineMetadata(
            created: nil,
            pipelineArn: nil,
            pollingDisabledAt: nil,
            updated: nil)

        return defaultInstance
    }()
}

public extension PipelineNameInUseException {
    /**
     Default instance of the PipelineNameInUseException structure.
     */
    static let __default: CodePipelineModel.PipelineNameInUseException = {
        let defaultInstance = CodePipelineModel.PipelineNameInUseException()

        return defaultInstance
    }()
}

public extension PipelineNotFoundException {
    /**
     Default instance of the PipelineNotFoundException structure.
     */
    static let __default: CodePipelineModel.PipelineNotFoundException = {
        let defaultInstance = CodePipelineModel.PipelineNotFoundException()

        return defaultInstance
    }()
}

public extension PipelineSummary {
    /**
     Default instance of the PipelineSummary structure.
     */
    static let __default: CodePipelineModel.PipelineSummary = {
        let defaultInstance = CodePipelineModel.PipelineSummary(
            created: nil,
            name: nil,
            pipelineType: nil,
            updated: nil,
            version: nil)

        return defaultInstance
    }()
}

public extension PipelineTriggerDeclaration {
    /**
     Default instance of the PipelineTriggerDeclaration structure.
     */
    static let __default: CodePipelineModel.PipelineTriggerDeclaration = {
        let defaultInstance = CodePipelineModel.PipelineTriggerDeclaration(
            gitConfiguration: GitConfiguration.__default,
            providerType: .__default)

        return defaultInstance
    }()
}

public extension PipelineVariable {
    /**
     Default instance of the PipelineVariable structure.
     */
    static let __default: CodePipelineModel.PipelineVariable = {
        let defaultInstance = CodePipelineModel.PipelineVariable(
            name: "0",
            value: "0")

        return defaultInstance
    }()
}

public extension PipelineVariableDeclaration {
    /**
     Default instance of the PipelineVariableDeclaration structure.
     */
    static let __default: CodePipelineModel.PipelineVariableDeclaration = {
        let defaultInstance = CodePipelineModel.PipelineVariableDeclaration(
            defaultValue: nil,
            description: nil,
            name: "0")

        return defaultInstance
    }()
}

public extension PipelineVersionNotFoundException {
    /**
     Default instance of the PipelineVersionNotFoundException structure.
     */
    static let __default: CodePipelineModel.PipelineVersionNotFoundException = {
        let defaultInstance = CodePipelineModel.PipelineVersionNotFoundException()

        return defaultInstance
    }()
}

public extension PollForJobsInput {
    /**
     Default instance of the PollForJobsInput structure.
     */
    static let __default: CodePipelineModel.PollForJobsInput = {
        let defaultInstance = CodePipelineModel.PollForJobsInput(
            actionTypeId: ActionTypeId.__default,
            maxBatchSize: nil,
            queryParam: nil)

        return defaultInstance
    }()
}

public extension PollForJobsOutput {
    /**
     Default instance of the PollForJobsOutput structure.
     */
    static let __default: CodePipelineModel.PollForJobsOutput = {
        let defaultInstance = CodePipelineModel.PollForJobsOutput(
            jobs: nil)

        return defaultInstance
    }()
}

public extension PollForThirdPartyJobsInput {
    /**
     Default instance of the PollForThirdPartyJobsInput structure.
     */
    static let __default: CodePipelineModel.PollForThirdPartyJobsInput = {
        let defaultInstance = CodePipelineModel.PollForThirdPartyJobsInput(
            actionTypeId: ActionTypeId.__default,
            maxBatchSize: nil)

        return defaultInstance
    }()
}

public extension PollForThirdPartyJobsOutput {
    /**
     Default instance of the PollForThirdPartyJobsOutput structure.
     */
    static let __default: CodePipelineModel.PollForThirdPartyJobsOutput = {
        let defaultInstance = CodePipelineModel.PollForThirdPartyJobsOutput(
            jobs: nil)

        return defaultInstance
    }()
}

public extension PutActionRevisionInput {
    /**
     Default instance of the PutActionRevisionInput structure.
     */
    static let __default: CodePipelineModel.PutActionRevisionInput = {
        let defaultInstance = CodePipelineModel.PutActionRevisionInput(
            actionName: "0",
            actionRevision: ActionRevision.__default,
            pipelineName: "0",
            stageName: "0")

        return defaultInstance
    }()
}

public extension PutActionRevisionOutput {
    /**
     Default instance of the PutActionRevisionOutput structure.
     */
    static let __default: CodePipelineModel.PutActionRevisionOutput = {
        let defaultInstance = CodePipelineModel.PutActionRevisionOutput(
            newRevision: nil,
            pipelineExecutionId: nil)

        return defaultInstance
    }()
}

public extension PutApprovalResultInput {
    /**
     Default instance of the PutApprovalResultInput structure.
     */
    static let __default: CodePipelineModel.PutApprovalResultInput = {
        let defaultInstance = CodePipelineModel.PutApprovalResultInput(
            actionName: "0",
            pipelineName: "0",
            result: ApprovalResult.__default,
            stageName: "0",
            token: "")

        return defaultInstance
    }()
}

public extension PutApprovalResultOutput {
    /**
     Default instance of the PutApprovalResultOutput structure.
     */
    static let __default: CodePipelineModel.PutApprovalResultOutput = {
        let defaultInstance = CodePipelineModel.PutApprovalResultOutput(
            approvedAt: nil)

        return defaultInstance
    }()
}

public extension PutJobFailureResultInput {
    /**
     Default instance of the PutJobFailureResultInput structure.
     */
    static let __default: CodePipelineModel.PutJobFailureResultInput = {
        let defaultInstance = CodePipelineModel.PutJobFailureResultInput(
            failureDetails: FailureDetails.__default,
            jobId: "")

        return defaultInstance
    }()
}

public extension PutJobSuccessResultInput {
    /**
     Default instance of the PutJobSuccessResultInput structure.
     */
    static let __default: CodePipelineModel.PutJobSuccessResultInput = {
        let defaultInstance = CodePipelineModel.PutJobSuccessResultInput(
            continuationToken: nil,
            currentRevision: nil,
            executionDetails: nil,
            jobId: "",
            outputVariables: nil)

        return defaultInstance
    }()
}

public extension PutThirdPartyJobFailureResultInput {
    /**
     Default instance of the PutThirdPartyJobFailureResultInput structure.
     */
    static let __default: CodePipelineModel.PutThirdPartyJobFailureResultInput = {
        let defaultInstance = CodePipelineModel.PutThirdPartyJobFailureResultInput(
            clientToken: "0",
            failureDetails: FailureDetails.__default,
            jobId: "0")

        return defaultInstance
    }()
}

public extension PutThirdPartyJobSuccessResultInput {
    /**
     Default instance of the PutThirdPartyJobSuccessResultInput structure.
     */
    static let __default: CodePipelineModel.PutThirdPartyJobSuccessResultInput = {
        let defaultInstance = CodePipelineModel.PutThirdPartyJobSuccessResultInput(
            clientToken: "0",
            continuationToken: nil,
            currentRevision: nil,
            executionDetails: nil,
            jobId: "0")

        return defaultInstance
    }()
}

public extension PutWebhookInput {
    /**
     Default instance of the PutWebhookInput structure.
     */
    static let __default: CodePipelineModel.PutWebhookInput = {
        let defaultInstance = CodePipelineModel.PutWebhookInput(
            tags: nil,
            webhook: WebhookDefinition.__default)

        return defaultInstance
    }()
}

public extension PutWebhookOutput {
    /**
     Default instance of the PutWebhookOutput structure.
     */
    static let __default: CodePipelineModel.PutWebhookOutput = {
        let defaultInstance = CodePipelineModel.PutWebhookOutput(
            webhook: nil)

        return defaultInstance
    }()
}

public extension RegisterWebhookWithThirdPartyInput {
    /**
     Default instance of the RegisterWebhookWithThirdPartyInput structure.
     */
    static let __default: CodePipelineModel.RegisterWebhookWithThirdPartyInput = {
        let defaultInstance = CodePipelineModel.RegisterWebhookWithThirdPartyInput(
            webhookName: nil)

        return defaultInstance
    }()
}

public extension RegisterWebhookWithThirdPartyOutput {
    /**
     Default instance of the RegisterWebhookWithThirdPartyOutput structure.
     */
    static let __default: CodePipelineModel.RegisterWebhookWithThirdPartyOutput = {
        let defaultInstance = CodePipelineModel.RegisterWebhookWithThirdPartyOutput()

        return defaultInstance
    }()
}

public extension RequestFailedException {
    /**
     Default instance of the RequestFailedException structure.
     */
    static let __default: CodePipelineModel.RequestFailedException = {
        let defaultInstance = CodePipelineModel.RequestFailedException(
            message: nil)

        return defaultInstance
    }()
}

public extension ResolvedPipelineVariable {
    /**
     Default instance of the ResolvedPipelineVariable structure.
     */
    static let __default: CodePipelineModel.ResolvedPipelineVariable = {
        let defaultInstance = CodePipelineModel.ResolvedPipelineVariable(
            name: nil,
            resolvedValue: nil)

        return defaultInstance
    }()
}

public extension ResourceNotFoundException {
    /**
     Default instance of the ResourceNotFoundException structure.
     */
    static let __default: CodePipelineModel.ResourceNotFoundException = {
        let defaultInstance = CodePipelineModel.ResourceNotFoundException()

        return defaultInstance
    }()
}

public extension RetryStageExecutionInput {
    /**
     Default instance of the RetryStageExecutionInput structure.
     */
    static let __default: CodePipelineModel.RetryStageExecutionInput = {
        let defaultInstance = CodePipelineModel.RetryStageExecutionInput(
            pipelineExecutionId: "",
            pipelineName: "0",
            retryMode: .__default,
            stageName: "0")

        return defaultInstance
    }()
}

public extension RetryStageExecutionOutput {
    /**
     Default instance of the RetryStageExecutionOutput structure.
     */
    static let __default: CodePipelineModel.RetryStageExecutionOutput = {
        let defaultInstance = CodePipelineModel.RetryStageExecutionOutput(
            pipelineExecutionId: nil)

        return defaultInstance
    }()
}

public extension S3ArtifactLocation {
    /**
     Default instance of the S3ArtifactLocation structure.
     */
    static let __default: CodePipelineModel.S3ArtifactLocation = {
        let defaultInstance = CodePipelineModel.S3ArtifactLocation(
            bucketName: "value",
            objectKey: "value")

        return defaultInstance
    }()
}

public extension S3Location {
    /**
     Default instance of the S3Location structure.
     */
    static let __default: CodePipelineModel.S3Location = {
        let defaultInstance = CodePipelineModel.S3Location(
            bucket: nil,
            key: nil)

        return defaultInstance
    }()
}

public extension SourceRevision {
    /**
     Default instance of the SourceRevision structure.
     */
    static let __default: CodePipelineModel.SourceRevision = {
        let defaultInstance = CodePipelineModel.SourceRevision(
            actionName: "0",
            revisionId: nil,
            revisionSummary: nil,
            revisionUrl: nil)

        return defaultInstance
    }()
}

public extension StageContext {
    /**
     Default instance of the StageContext structure.
     */
    static let __default: CodePipelineModel.StageContext = {
        let defaultInstance = CodePipelineModel.StageContext(
            name: nil)

        return defaultInstance
    }()
}

public extension StageDeclaration {
    /**
     Default instance of the StageDeclaration structure.
     */
    static let __default: CodePipelineModel.StageDeclaration = {
        let defaultInstance = CodePipelineModel.StageDeclaration(
            actions: [],
            blockers: nil,
            name: "0")

        return defaultInstance
    }()
}

public extension StageExecution {
    /**
     Default instance of the StageExecution structure.
     */
    static let __default: CodePipelineModel.StageExecution = {
        let defaultInstance = CodePipelineModel.StageExecution(
            pipelineExecutionId: "",
            status: .__default)

        return defaultInstance
    }()
}

public extension StageNotFoundException {
    /**
     Default instance of the StageNotFoundException structure.
     */
    static let __default: CodePipelineModel.StageNotFoundException = {
        let defaultInstance = CodePipelineModel.StageNotFoundException()

        return defaultInstance
    }()
}

public extension StageNotRetryableException {
    /**
     Default instance of the StageNotRetryableException structure.
     */
    static let __default: CodePipelineModel.StageNotRetryableException = {
        let defaultInstance = CodePipelineModel.StageNotRetryableException()

        return defaultInstance
    }()
}

public extension StageState {
    /**
     Default instance of the StageState structure.
     */
    static let __default: CodePipelineModel.StageState = {
        let defaultInstance = CodePipelineModel.StageState(
            actionStates: nil,
            inboundExecution: nil,
            inboundTransitionState: nil,
            latestExecution: nil,
            stageName: nil)

        return defaultInstance
    }()
}

public extension StartPipelineExecutionInput {
    /**
     Default instance of the StartPipelineExecutionInput structure.
     */
    static let __default: CodePipelineModel.StartPipelineExecutionInput = {
        let defaultInstance = CodePipelineModel.StartPipelineExecutionInput(
            clientRequestToken: nil,
            name: "0",
            variables: nil)

        return defaultInstance
    }()
}

public extension StartPipelineExecutionOutput {
    /**
     Default instance of the StartPipelineExecutionOutput structure.
     */
    static let __default: CodePipelineModel.StartPipelineExecutionOutput = {
        let defaultInstance = CodePipelineModel.StartPipelineExecutionOutput(
            pipelineExecutionId: nil)

        return defaultInstance
    }()
}

public extension StopExecutionTrigger {
    /**
     Default instance of the StopExecutionTrigger structure.
     */
    static let __default: CodePipelineModel.StopExecutionTrigger = {
        let defaultInstance = CodePipelineModel.StopExecutionTrigger(
            reason: nil)

        return defaultInstance
    }()
}

public extension StopPipelineExecutionInput {
    /**
     Default instance of the StopPipelineExecutionInput structure.
     */
    static let __default: CodePipelineModel.StopPipelineExecutionInput = {
        let defaultInstance = CodePipelineModel.StopPipelineExecutionInput(
            abandon: nil,
            pipelineExecutionId: "",
            pipelineName: "0",
            reason: nil)

        return defaultInstance
    }()
}

public extension StopPipelineExecutionOutput {
    /**
     Default instance of the StopPipelineExecutionOutput structure.
     */
    static let __default: CodePipelineModel.StopPipelineExecutionOutput = {
        let defaultInstance = CodePipelineModel.StopPipelineExecutionOutput(
            pipelineExecutionId: nil)

        return defaultInstance
    }()
}

public extension Tag {
    /**
     Default instance of the Tag structure.
     */
    static let __default: CodePipelineModel.Tag = {
        let defaultInstance = CodePipelineModel.Tag(
            key: "0",
            value: "")

        return defaultInstance
    }()
}

public extension TagResourceInput {
    /**
     Default instance of the TagResourceInput structure.
     */
    static let __default: CodePipelineModel.TagResourceInput = {
        let defaultInstance = CodePipelineModel.TagResourceInput(
            resourceArn: "",
            tags: [])

        return defaultInstance
    }()
}

public extension TagResourceOutput {
    /**
     Default instance of the TagResourceOutput structure.
     */
    static let __default: CodePipelineModel.TagResourceOutput = {
        let defaultInstance = CodePipelineModel.TagResourceOutput()

        return defaultInstance
    }()
}

public extension ThirdPartyJob {
    /**
     Default instance of the ThirdPartyJob structure.
     */
    static let __default: CodePipelineModel.ThirdPartyJob = {
        let defaultInstance = CodePipelineModel.ThirdPartyJob(
            clientId: nil,
            jobId: nil)

        return defaultInstance
    }()
}

public extension ThirdPartyJobData {
    /**
     Default instance of the ThirdPartyJobData structure.
     */
    static let __default: CodePipelineModel.ThirdPartyJobData = {
        let defaultInstance = CodePipelineModel.ThirdPartyJobData(
            actionConfiguration: nil,
            actionTypeId: nil,
            artifactCredentials: nil,
            continuationToken: nil,
            encryptionKey: nil,
            inputArtifacts: nil,
            outputArtifacts: nil,
            pipelineContext: nil)

        return defaultInstance
    }()
}

public extension ThirdPartyJobDetails {
    /**
     Default instance of the ThirdPartyJobDetails structure.
     */
    static let __default: CodePipelineModel.ThirdPartyJobDetails = {
        let defaultInstance = CodePipelineModel.ThirdPartyJobDetails(
            data: nil,
            id: nil,
            nonce: nil)

        return defaultInstance
    }()
}

public extension TooManyTagsException {
    /**
     Default instance of the TooManyTagsException structure.
     */
    static let __default: CodePipelineModel.TooManyTagsException = {
        let defaultInstance = CodePipelineModel.TooManyTagsException(
            message: nil)

        return defaultInstance
    }()
}

public extension TransitionState {
    /**
     Default instance of the TransitionState structure.
     */
    static let __default: CodePipelineModel.TransitionState = {
        let defaultInstance = CodePipelineModel.TransitionState(
            disabledReason: nil,
            enabled: nil,
            lastChangedAt: nil,
            lastChangedBy: nil)

        return defaultInstance
    }()
}

public extension UntagResourceInput {
    /**
     Default instance of the UntagResourceInput structure.
     */
    static let __default: CodePipelineModel.UntagResourceInput = {
        let defaultInstance = CodePipelineModel.UntagResourceInput(
            resourceArn: "",
            tagKeys: [])

        return defaultInstance
    }()
}

public extension UntagResourceOutput {
    /**
     Default instance of the UntagResourceOutput structure.
     */
    static let __default: CodePipelineModel.UntagResourceOutput = {
        let defaultInstance = CodePipelineModel.UntagResourceOutput()

        return defaultInstance
    }()
}

public extension UpdateActionTypeInput {
    /**
     Default instance of the UpdateActionTypeInput structure.
     */
    static let __default: CodePipelineModel.UpdateActionTypeInput = {
        let defaultInstance = CodePipelineModel.UpdateActionTypeInput(
            actionType: ActionTypeDeclaration.__default)

        return defaultInstance
    }()
}

public extension UpdatePipelineInput {
    /**
     Default instance of the UpdatePipelineInput structure.
     */
    static let __default: CodePipelineModel.UpdatePipelineInput = {
        let defaultInstance = CodePipelineModel.UpdatePipelineInput(
            pipeline: PipelineDeclaration.__default)

        return defaultInstance
    }()
}

public extension UpdatePipelineOutput {
    /**
     Default instance of the UpdatePipelineOutput structure.
     */
    static let __default: CodePipelineModel.UpdatePipelineOutput = {
        let defaultInstance = CodePipelineModel.UpdatePipelineOutput(
            pipeline: nil)

        return defaultInstance
    }()
}

public extension ValidationException {
    /**
     Default instance of the ValidationException structure.
     */
    static let __default: CodePipelineModel.ValidationException = {
        let defaultInstance = CodePipelineModel.ValidationException()

        return defaultInstance
    }()
}

public extension WebhookAuthConfiguration {
    /**
     Default instance of the WebhookAuthConfiguration structure.
     */
    static let __default: CodePipelineModel.WebhookAuthConfiguration = {
        let defaultInstance = CodePipelineModel.WebhookAuthConfiguration(
            allowedIPRange: nil,
            secretToken: nil)

        return defaultInstance
    }()
}

public extension WebhookDefinition {
    /**
     Default instance of the WebhookDefinition structure.
     */
    static let __default: CodePipelineModel.WebhookDefinition = {
        let defaultInstance = CodePipelineModel.WebhookDefinition(
            authentication: .__default,
            authenticationConfiguration: WebhookAuthConfiguration.__default,
            filters: [],
            name: "0",
            targetAction: "0",
            targetPipeline: "0")

        return defaultInstance
    }()
}

public extension WebhookFilterRule {
    /**
     Default instance of the WebhookFilterRule structure.
     */
    static let __default: CodePipelineModel.WebhookFilterRule = {
        let defaultInstance = CodePipelineModel.WebhookFilterRule(
            jsonPath: "0",
            matchEquals: nil)

        return defaultInstance
    }()
}

public extension WebhookNotFoundException {
    /**
     Default instance of the WebhookNotFoundException structure.
     */
    static let __default: CodePipelineModel.WebhookNotFoundException = {
        let defaultInstance = CodePipelineModel.WebhookNotFoundException()

        return defaultInstance
    }()
}
