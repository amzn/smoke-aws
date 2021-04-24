//
//  AWSClientProtocol.swift
//

#if compiler(>=5.5) && $AsyncAwait

import SmokeHTTPClient
import SmokeAWSCore
import NIO
import SmokeAWSHttp
import _SmokeHTTPClientConcurrency

public extension AWSQueryClientProtocol {
    func executeWithoutOutput<InvocationReportingType: HTTPClientInvocationReporting,
                              WrappedInputType: HTTPRequestInputProtocol, ErrorType: ConvertableError>(
            httpClient: HTTPOperationsClient,
            wrappedInput: WrappedInputType,
            action: String,
            reporting: InvocationReportingType,
            errorType: ErrorType.Type) async throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: reporting,
                                                            handlerDelegate: handlerDelegate)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: action,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
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
                                WrappedInputType: HTTPRequestInputProtocol, ErrorType: ConvertableError>(
            httpClient: HTTPOperationsClient,
            wrappedInput: WrappedInputType,
            action: String,
            reporting: InvocationReportingType,
            errorType: ErrorType.Type) async throws -> OutputType {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: reporting,
                                                            handlerDelegate: handlerDelegate)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: action,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
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
