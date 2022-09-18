//
//  StepFunctionsEventSource.swift
//  SmokeLambdaEvents
//

import Foundation

public typealias ActivityTaskToken = String

public struct StepFunctionsEventSource<PayloadType: Decodable>: Decodable {
    public let token: ActivityTaskToken
    public let payload: PayloadType
    
    public init(token: ActivityTaskToken, payload: PayloadType) {
        self.token = token
        self.payload = payload
    }
    
    enum CodingKeys: String, CodingKey {
        case token
    }
    
    public init(from decoder: Decoder) throws {
        // Fetch token out
        let tokenContainer = try decoder.container(keyedBy: CodingKeys.self)
        self.token = try tokenContainer.decode(ActivityTaskToken.self, forKey: .token)
        // Use the init(from: decoder) provided by the `PayloadType` to decode the rest of the payload
        self.payload = try PayloadType(from: decoder)
    }
}
