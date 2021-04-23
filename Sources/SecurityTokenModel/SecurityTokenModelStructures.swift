// Copyright 2018-2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// SecurityTokenModelStructures.swift
// SecurityTokenModel
//

import Foundation

public struct AssumeRoleRequest: Codable, Equatable {
    public var durationSeconds: RoleDurationSecondsType?
    public var externalId: ExternalIdType?
    public var policy: SessionPolicyDocumentType?
    public var policyArns: PolicyDescriptorListType?
    public var roleArn: ArnType
    public var roleSessionName: RoleSessionNameType
    public var serialNumber: SerialNumberType?
    public var sourceIdentity: SourceIdentityType?
    public var tags: TagListType?
    public var tokenCode: TokenCodeType?
    public var transitiveTagKeys: TagKeyListType?

    public init(durationSeconds: RoleDurationSecondsType? = nil,
                externalId: ExternalIdType? = nil,
                policy: SessionPolicyDocumentType? = nil,
                policyArns: PolicyDescriptorListType? = nil,
                roleArn: ArnType,
                roleSessionName: RoleSessionNameType,
                serialNumber: SerialNumberType? = nil,
                sourceIdentity: SourceIdentityType? = nil,
                tags: TagListType? = nil,
                tokenCode: TokenCodeType? = nil,
                transitiveTagKeys: TagKeyListType? = nil) {
        self.durationSeconds = durationSeconds
        self.externalId = externalId
        self.policy = policy
        self.policyArns = policyArns
        self.roleArn = roleArn
        self.roleSessionName = roleSessionName
        self.serialNumber = serialNumber
        self.sourceIdentity = sourceIdentity
        self.tags = tags
        self.tokenCode = tokenCode
        self.transitiveTagKeys = transitiveTagKeys
    }

    enum CodingKeys: String, CodingKey {
        case durationSeconds = "DurationSeconds"
        case externalId = "ExternalId"
        case policy = "Policy"
        case policyArns = "PolicyArns"
        case roleArn = "RoleArn"
        case roleSessionName = "RoleSessionName"
        case serialNumber = "SerialNumber"
        case sourceIdentity = "SourceIdentity"
        case tags = "Tags"
        case tokenCode = "TokenCode"
        case transitiveTagKeys = "TransitiveTagKeys"
    }

    public func validate() throws {
        try durationSeconds?.validateAsRoleDurationSecondsType()
        try externalId?.validateAsExternalIdType()
        try policy?.validateAsSessionPolicyDocumentType()
        try roleArn.validateAsArnType()
        try roleSessionName.validateAsRoleSessionNameType()
        try serialNumber?.validateAsSerialNumberType()
        try sourceIdentity?.validateAsSourceIdentityType()
        try tags?.validateAsTagListType()
        try tokenCode?.validateAsTokenCodeType()
        try transitiveTagKeys?.validateAsTagKeyListType()
    }
}

public struct AssumeRoleResponse: Codable, Equatable {
    public var assumedRoleUser: AssumedRoleUser?
    public var credentials: Credentials?
    public var packedPolicySize: NonNegativeIntegerType?
    public var sourceIdentity: SourceIdentityType?

    public init(assumedRoleUser: AssumedRoleUser? = nil,
                credentials: Credentials? = nil,
                packedPolicySize: NonNegativeIntegerType? = nil,
                sourceIdentity: SourceIdentityType? = nil) {
        self.assumedRoleUser = assumedRoleUser
        self.credentials = credentials
        self.packedPolicySize = packedPolicySize
        self.sourceIdentity = sourceIdentity
    }

    enum CodingKeys: String, CodingKey {
        case assumedRoleUser = "AssumedRoleUser"
        case credentials = "Credentials"
        case packedPolicySize = "PackedPolicySize"
        case sourceIdentity = "SourceIdentity"
    }

    public func validate() throws {
        try assumedRoleUser?.validate()
        try credentials?.validate()
        try packedPolicySize?.validateAsNonNegativeIntegerType()
        try sourceIdentity?.validateAsSourceIdentityType()
    }
}

public struct AssumeRoleResponseForAssumeRole: Codable, Equatable {
    public var assumeRoleResult: AssumeRoleResponse

    public init(assumeRoleResult: AssumeRoleResponse) {
        self.assumeRoleResult = assumeRoleResult
    }

    enum CodingKeys: String, CodingKey {
        case assumeRoleResult = "AssumeRoleResult"
    }

    public func validate() throws {
        try assumeRoleResult.validate()
    }
}

public struct AssumeRoleWithSAMLRequest: Codable, Equatable {
    public var durationSeconds: RoleDurationSecondsType?
    public var policy: SessionPolicyDocumentType?
    public var policyArns: PolicyDescriptorListType?
    public var principalArn: ArnType
    public var roleArn: ArnType
    public var sAMLAssertion: SAMLAssertionType

    public init(durationSeconds: RoleDurationSecondsType? = nil,
                policy: SessionPolicyDocumentType? = nil,
                policyArns: PolicyDescriptorListType? = nil,
                principalArn: ArnType,
                roleArn: ArnType,
                sAMLAssertion: SAMLAssertionType) {
        self.durationSeconds = durationSeconds
        self.policy = policy
        self.policyArns = policyArns
        self.principalArn = principalArn
        self.roleArn = roleArn
        self.sAMLAssertion = sAMLAssertion
    }

    enum CodingKeys: String, CodingKey {
        case durationSeconds = "DurationSeconds"
        case policy = "Policy"
        case policyArns = "PolicyArns"
        case principalArn = "PrincipalArn"
        case roleArn = "RoleArn"
        case sAMLAssertion = "SAMLAssertion"
    }

    public func validate() throws {
        try durationSeconds?.validateAsRoleDurationSecondsType()
        try policy?.validateAsSessionPolicyDocumentType()
        try principalArn.validateAsArnType()
        try roleArn.validateAsArnType()
        try sAMLAssertion.validateAsSAMLAssertionType()
    }
}

public struct AssumeRoleWithSAMLResponse: Codable, Equatable {
    public var assumedRoleUser: AssumedRoleUser?
    public var audience: Audience?
    public var credentials: Credentials?
    public var issuer: Issuer?
    public var nameQualifier: NameQualifier?
    public var packedPolicySize: NonNegativeIntegerType?
    public var sourceIdentity: SourceIdentityType?
    public var subject: Subject?
    public var subjectType: SubjectType?

    public init(assumedRoleUser: AssumedRoleUser? = nil,
                audience: Audience? = nil,
                credentials: Credentials? = nil,
                issuer: Issuer? = nil,
                nameQualifier: NameQualifier? = nil,
                packedPolicySize: NonNegativeIntegerType? = nil,
                sourceIdentity: SourceIdentityType? = nil,
                subject: Subject? = nil,
                subjectType: SubjectType? = nil) {
        self.assumedRoleUser = assumedRoleUser
        self.audience = audience
        self.credentials = credentials
        self.issuer = issuer
        self.nameQualifier = nameQualifier
        self.packedPolicySize = packedPolicySize
        self.sourceIdentity = sourceIdentity
        self.subject = subject
        self.subjectType = subjectType
    }

    enum CodingKeys: String, CodingKey {
        case assumedRoleUser = "AssumedRoleUser"
        case audience = "Audience"
        case credentials = "Credentials"
        case issuer = "Issuer"
        case nameQualifier = "NameQualifier"
        case packedPolicySize = "PackedPolicySize"
        case sourceIdentity = "SourceIdentity"
        case subject = "Subject"
        case subjectType = "SubjectType"
    }

    public func validate() throws {
        try assumedRoleUser?.validate()
        try credentials?.validate()
        try packedPolicySize?.validateAsNonNegativeIntegerType()
        try sourceIdentity?.validateAsSourceIdentityType()
    }
}

public struct AssumeRoleWithSAMLResponseForAssumeRoleWithSAML: Codable, Equatable {
    public var assumeRoleWithSAMLResult: AssumeRoleWithSAMLResponse

    public init(assumeRoleWithSAMLResult: AssumeRoleWithSAMLResponse) {
        self.assumeRoleWithSAMLResult = assumeRoleWithSAMLResult
    }

    enum CodingKeys: String, CodingKey {
        case assumeRoleWithSAMLResult = "AssumeRoleWithSAMLResult"
    }

    public func validate() throws {
        try assumeRoleWithSAMLResult.validate()
    }
}

public struct AssumeRoleWithWebIdentityRequest: Codable, Equatable {
    public var durationSeconds: RoleDurationSecondsType?
    public var policy: SessionPolicyDocumentType?
    public var policyArns: PolicyDescriptorListType?
    public var providerId: UrlType?
    public var roleArn: ArnType
    public var roleSessionName: RoleSessionNameType
    public var webIdentityToken: ClientTokenType

    public init(durationSeconds: RoleDurationSecondsType? = nil,
                policy: SessionPolicyDocumentType? = nil,
                policyArns: PolicyDescriptorListType? = nil,
                providerId: UrlType? = nil,
                roleArn: ArnType,
                roleSessionName: RoleSessionNameType,
                webIdentityToken: ClientTokenType) {
        self.durationSeconds = durationSeconds
        self.policy = policy
        self.policyArns = policyArns
        self.providerId = providerId
        self.roleArn = roleArn
        self.roleSessionName = roleSessionName
        self.webIdentityToken = webIdentityToken
    }

    enum CodingKeys: String, CodingKey {
        case durationSeconds = "DurationSeconds"
        case policy = "Policy"
        case policyArns = "PolicyArns"
        case providerId = "ProviderId"
        case roleArn = "RoleArn"
        case roleSessionName = "RoleSessionName"
        case webIdentityToken = "WebIdentityToken"
    }

    public func validate() throws {
        try durationSeconds?.validateAsRoleDurationSecondsType()
        try policy?.validateAsSessionPolicyDocumentType()
        try providerId?.validateAsUrlType()
        try roleArn.validateAsArnType()
        try roleSessionName.validateAsRoleSessionNameType()
        try webIdentityToken.validateAsClientTokenType()
    }
}

public struct AssumeRoleWithWebIdentityResponse: Codable, Equatable {
    public var assumedRoleUser: AssumedRoleUser?
    public var audience: Audience?
    public var credentials: Credentials?
    public var packedPolicySize: NonNegativeIntegerType?
    public var provider: Issuer?
    public var sourceIdentity: SourceIdentityType?
    public var subjectFromWebIdentityToken: WebIdentitySubjectType?

    public init(assumedRoleUser: AssumedRoleUser? = nil,
                audience: Audience? = nil,
                credentials: Credentials? = nil,
                packedPolicySize: NonNegativeIntegerType? = nil,
                provider: Issuer? = nil,
                sourceIdentity: SourceIdentityType? = nil,
                subjectFromWebIdentityToken: WebIdentitySubjectType? = nil) {
        self.assumedRoleUser = assumedRoleUser
        self.audience = audience
        self.credentials = credentials
        self.packedPolicySize = packedPolicySize
        self.provider = provider
        self.sourceIdentity = sourceIdentity
        self.subjectFromWebIdentityToken = subjectFromWebIdentityToken
    }

    enum CodingKeys: String, CodingKey {
        case assumedRoleUser = "AssumedRoleUser"
        case audience = "Audience"
        case credentials = "Credentials"
        case packedPolicySize = "PackedPolicySize"
        case provider = "Provider"
        case sourceIdentity = "SourceIdentity"
        case subjectFromWebIdentityToken = "SubjectFromWebIdentityToken"
    }

    public func validate() throws {
        try assumedRoleUser?.validate()
        try credentials?.validate()
        try packedPolicySize?.validateAsNonNegativeIntegerType()
        try sourceIdentity?.validateAsSourceIdentityType()
        try subjectFromWebIdentityToken?.validateAsWebIdentitySubjectType()
    }
}

public struct AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity: Codable, Equatable {
    public var assumeRoleWithWebIdentityResult: AssumeRoleWithWebIdentityResponse

    public init(assumeRoleWithWebIdentityResult: AssumeRoleWithWebIdentityResponse) {
        self.assumeRoleWithWebIdentityResult = assumeRoleWithWebIdentityResult
    }

    enum CodingKeys: String, CodingKey {
        case assumeRoleWithWebIdentityResult = "AssumeRoleWithWebIdentityResult"
    }

    public func validate() throws {
        try assumeRoleWithWebIdentityResult.validate()
    }
}

public struct AssumedRoleUser: Codable, Equatable {
    public var arn: ArnType
    public var assumedRoleId: AssumedRoleIdType

    public init(arn: ArnType,
                assumedRoleId: AssumedRoleIdType) {
        self.arn = arn
        self.assumedRoleId = assumedRoleId
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case assumedRoleId = "AssumedRoleId"
    }

    public func validate() throws {
        try arn.validateAsArnType()
        try assumedRoleId.validateAsAssumedRoleIdType()
    }
}

public struct Credentials: Codable, Equatable {
    public var accessKeyId: AccessKeyIdType
    public var expiration: DateType
    public var secretAccessKey: AccessKeySecretType
    public var sessionToken: TokenType

    public init(accessKeyId: AccessKeyIdType,
                expiration: DateType,
                secretAccessKey: AccessKeySecretType,
                sessionToken: TokenType) {
        self.accessKeyId = accessKeyId
        self.expiration = expiration
        self.secretAccessKey = secretAccessKey
        self.sessionToken = sessionToken
    }

    enum CodingKeys: String, CodingKey {
        case accessKeyId = "AccessKeyId"
        case expiration = "Expiration"
        case secretAccessKey = "SecretAccessKey"
        case sessionToken = "SessionToken"
    }

    public func validate() throws {
        try accessKeyId.validateAsAccessKeyIdType()
    }
}

public struct DecodeAuthorizationMessageRequest: Codable, Equatable {
    public var encodedMessage: EncodedMessageType

    public init(encodedMessage: EncodedMessageType) {
        self.encodedMessage = encodedMessage
    }

    enum CodingKeys: String, CodingKey {
        case encodedMessage = "EncodedMessage"
    }

    public func validate() throws {
        try encodedMessage.validateAsEncodedMessageType()
    }
}

public struct DecodeAuthorizationMessageResponse: Codable, Equatable {
    public var decodedMessage: DecodedMessageType?

    public init(decodedMessage: DecodedMessageType? = nil) {
        self.decodedMessage = decodedMessage
    }

    enum CodingKeys: String, CodingKey {
        case decodedMessage = "DecodedMessage"
    }

    public func validate() throws {
    }
}

public struct DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage: Codable, Equatable {
    public var decodeAuthorizationMessageResult: DecodeAuthorizationMessageResponse

    public init(decodeAuthorizationMessageResult: DecodeAuthorizationMessageResponse) {
        self.decodeAuthorizationMessageResult = decodeAuthorizationMessageResult
    }

    enum CodingKeys: String, CodingKey {
        case decodeAuthorizationMessageResult = "DecodeAuthorizationMessageResult"
    }

    public func validate() throws {
        try decodeAuthorizationMessageResult.validate()
    }
}

public struct ExpiredTokenException: Codable, Equatable {
    public var message: ExpiredIdentityTokenMessage?

    public init(message: ExpiredIdentityTokenMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct FederatedUser: Codable, Equatable {
    public var arn: ArnType
    public var federatedUserId: FederatedIdType

    public init(arn: ArnType,
                federatedUserId: FederatedIdType) {
        self.arn = arn
        self.federatedUserId = federatedUserId
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case federatedUserId = "FederatedUserId"
    }

    public func validate() throws {
        try arn.validateAsArnType()
        try federatedUserId.validateAsFederatedIdType()
    }
}

public struct GetAccessKeyInfoRequest: Codable, Equatable {
    public var accessKeyId: AccessKeyIdType

    public init(accessKeyId: AccessKeyIdType) {
        self.accessKeyId = accessKeyId
    }

    enum CodingKeys: String, CodingKey {
        case accessKeyId = "AccessKeyId"
    }

    public func validate() throws {
        try accessKeyId.validateAsAccessKeyIdType()
    }
}

public struct GetAccessKeyInfoResponse: Codable, Equatable {
    public var account: AccountType?

    public init(account: AccountType? = nil) {
        self.account = account
    }

    enum CodingKeys: String, CodingKey {
        case account = "Account"
    }

    public func validate() throws {
    }
}

public struct GetAccessKeyInfoResponseForGetAccessKeyInfo: Codable, Equatable {
    public var getAccessKeyInfoResult: GetAccessKeyInfoResponse

    public init(getAccessKeyInfoResult: GetAccessKeyInfoResponse) {
        self.getAccessKeyInfoResult = getAccessKeyInfoResult
    }

    enum CodingKeys: String, CodingKey {
        case getAccessKeyInfoResult = "GetAccessKeyInfoResult"
    }

    public func validate() throws {
        try getAccessKeyInfoResult.validate()
    }
}

public struct GetCallerIdentityRequest: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct GetCallerIdentityResponse: Codable, Equatable {
    public var account: AccountType?
    public var arn: ArnType?
    public var userId: UserIdType?

    public init(account: AccountType? = nil,
                arn: ArnType? = nil,
                userId: UserIdType? = nil) {
        self.account = account
        self.arn = arn
        self.userId = userId
    }

    enum CodingKeys: String, CodingKey {
        case account = "Account"
        case arn = "Arn"
        case userId = "UserId"
    }

    public func validate() throws {
        try arn?.validateAsArnType()
    }
}

public struct GetCallerIdentityResponseForGetCallerIdentity: Codable, Equatable {
    public var getCallerIdentityResult: GetCallerIdentityResponse

    public init(getCallerIdentityResult: GetCallerIdentityResponse) {
        self.getCallerIdentityResult = getCallerIdentityResult
    }

    enum CodingKeys: String, CodingKey {
        case getCallerIdentityResult = "GetCallerIdentityResult"
    }

    public func validate() throws {
        try getCallerIdentityResult.validate()
    }
}

public struct GetFederationTokenRequest: Codable, Equatable {
    public var durationSeconds: DurationSecondsType?
    public var name: UserNameType
    public var policy: SessionPolicyDocumentType?
    public var policyArns: PolicyDescriptorListType?
    public var tags: TagListType?

    public init(durationSeconds: DurationSecondsType? = nil,
                name: UserNameType,
                policy: SessionPolicyDocumentType? = nil,
                policyArns: PolicyDescriptorListType? = nil,
                tags: TagListType? = nil) {
        self.durationSeconds = durationSeconds
        self.name = name
        self.policy = policy
        self.policyArns = policyArns
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case durationSeconds = "DurationSeconds"
        case name = "Name"
        case policy = "Policy"
        case policyArns = "PolicyArns"
        case tags = "Tags"
    }

    public func validate() throws {
        try durationSeconds?.validateAsDurationSecondsType()
        try name.validateAsUserNameType()
        try policy?.validateAsSessionPolicyDocumentType()
        try tags?.validateAsTagListType()
    }
}

public struct GetFederationTokenResponse: Codable, Equatable {
    public var credentials: Credentials?
    public var federatedUser: FederatedUser?
    public var packedPolicySize: NonNegativeIntegerType?

    public init(credentials: Credentials? = nil,
                federatedUser: FederatedUser? = nil,
                packedPolicySize: NonNegativeIntegerType? = nil) {
        self.credentials = credentials
        self.federatedUser = federatedUser
        self.packedPolicySize = packedPolicySize
    }

    enum CodingKeys: String, CodingKey {
        case credentials = "Credentials"
        case federatedUser = "FederatedUser"
        case packedPolicySize = "PackedPolicySize"
    }

    public func validate() throws {
        try credentials?.validate()
        try federatedUser?.validate()
        try packedPolicySize?.validateAsNonNegativeIntegerType()
    }
}

public struct GetFederationTokenResponseForGetFederationToken: Codable, Equatable {
    public var getFederationTokenResult: GetFederationTokenResponse

    public init(getFederationTokenResult: GetFederationTokenResponse) {
        self.getFederationTokenResult = getFederationTokenResult
    }

    enum CodingKeys: String, CodingKey {
        case getFederationTokenResult = "GetFederationTokenResult"
    }

    public func validate() throws {
        try getFederationTokenResult.validate()
    }
}

public struct GetSessionTokenRequest: Codable, Equatable {
    public var durationSeconds: DurationSecondsType?
    public var serialNumber: SerialNumberType?
    public var tokenCode: TokenCodeType?

    public init(durationSeconds: DurationSecondsType? = nil,
                serialNumber: SerialNumberType? = nil,
                tokenCode: TokenCodeType? = nil) {
        self.durationSeconds = durationSeconds
        self.serialNumber = serialNumber
        self.tokenCode = tokenCode
    }

    enum CodingKeys: String, CodingKey {
        case durationSeconds = "DurationSeconds"
        case serialNumber = "SerialNumber"
        case tokenCode = "TokenCode"
    }

    public func validate() throws {
        try durationSeconds?.validateAsDurationSecondsType()
        try serialNumber?.validateAsSerialNumberType()
        try tokenCode?.validateAsTokenCodeType()
    }
}

public struct GetSessionTokenResponse: Codable, Equatable {
    public var credentials: Credentials?

    public init(credentials: Credentials? = nil) {
        self.credentials = credentials
    }

    enum CodingKeys: String, CodingKey {
        case credentials = "Credentials"
    }

    public func validate() throws {
        try credentials?.validate()
    }
}

public struct GetSessionTokenResponseForGetSessionToken: Codable, Equatable {
    public var getSessionTokenResult: GetSessionTokenResponse

    public init(getSessionTokenResult: GetSessionTokenResponse) {
        self.getSessionTokenResult = getSessionTokenResult
    }

    enum CodingKeys: String, CodingKey {
        case getSessionTokenResult = "GetSessionTokenResult"
    }

    public func validate() throws {
        try getSessionTokenResult.validate()
    }
}

public struct IDPCommunicationErrorException: Codable, Equatable {
    public var message: IdpCommunicationErrorMessage?

    public init(message: IdpCommunicationErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct IDPRejectedClaimException: Codable, Equatable {
    public var message: IdpRejectedClaimMessage?

    public init(message: IdpRejectedClaimMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct InvalidAuthorizationMessageException: Codable, Equatable {
    public var message: InvalidAuthorizationMessage?

    public init(message: InvalidAuthorizationMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct InvalidIdentityTokenException: Codable, Equatable {
    public var message: InvalidIdentityTokenMessage?

    public init(message: InvalidIdentityTokenMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct MalformedPolicyDocumentException: Codable, Equatable {
    public var message: MalformedPolicyDocumentMessage?

    public init(message: MalformedPolicyDocumentMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct PackedPolicyTooLargeException: Codable, Equatable {
    public var message: PackedPolicyTooLargeMessage?

    public init(message: PackedPolicyTooLargeMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct PolicyDescriptorType: Codable, Equatable {
    public var arn: ArnType?

    public init(arn: ArnType? = nil) {
        self.arn = arn
    }

    enum CodingKeys: String, CodingKey {
        case arn
    }

    public func validate() throws {
        try arn?.validateAsArnType()
    }
}

public struct RegionDisabledException: Codable, Equatable {
    public var message: RegionDisabledMessage?

    public init(message: RegionDisabledMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct Tag: Codable, Equatable {
    public var key: TagKeyType
    public var value: TagValueType

    public init(key: TagKeyType,
                value: TagValueType) {
        self.key = key
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case key = "Key"
        case value = "Value"
    }

    public func validate() throws {
        try key.validateAsTagKeyType()
        try value.validateAsTagValueType()
    }
}
