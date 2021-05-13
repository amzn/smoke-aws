//
//  AWSClientProtocol.swift
//

#if compiler(>=5.5) && $AsyncAwait

import SmokeHTTPClient
import SmokeAWSCore
import NIO
import NIOHTTP1
import NIOTransportServices
import AsyncHTTPClient
import SmokeAWSHttp
import _SmokeHTTPClientConcurrency

public extension AWSClientProtocol {
    func executeWithoutOutput<InvocationReportingType: HTTPClientInvocationReporting,
                              InputType: HTTPRequestInputProtocol, ErrorType: ConvertableError>(
            httpClient: HTTPOperationsClient,
            endpointPath: String = "/",
            httpMethod: HTTPMethod = .POST,
            requestInput: InputType,
            operation: String,
            reporting: InvocationReportingType,
            signAllHeaders: Bool = false,
            errorType: ErrorType.Type) async throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: operation,
                    target: target,
                    signAllHeaders: signAllHeaders)

        let invocationContext = HTTPClientInvocationContext(reporting: reporting,
                                                            handlerDelegate: handlerDelegate)

        do {
            return try await httpClient.executeRetriableWithoutOutput(
                endpointPath: endpointPath,
                httpMethod: httpMethod,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ErrorType = error.asTypedError()
            throw typedError
        }
    }
    
    func executeWithOutput<OutputType: HTTPResponseOutputProtocol, InvocationReportingType: HTTPClientInvocationReporting,
                           InputType: HTTPRequestInputProtocol, ErrorType: ConvertableError>(
            httpClient: HTTPOperationsClient,
            endpointPath: String = "/",
            httpMethod: HTTPMethod = .POST,
            requestInput: InputType,
            operation: String,
            reporting: InvocationReportingType,
            signAllHeaders: Bool = false,
            errorType: ErrorType.Type) async throws -> OutputType {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: operation,
                    target: target,
                    signAllHeaders: signAllHeaders)

        let invocationContext = HTTPClientInvocationContext(reporting: reporting,
                                                            handlerDelegate: handlerDelegate)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: endpointPath,
                httpMethod: httpMethod,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ErrorType = error.asTypedError()
            throw typedError
        }
    }
}

#endif
