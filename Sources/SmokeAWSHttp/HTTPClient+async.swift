// Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
//  HTTPClient+async.swift
//  SmokeAWSHttp
//

import Foundation
import NIO
import SmokeHTTPClient

public extension HTTPClient {
    static func handleAsyncWithResult<InputType, OutputType>(
            input: InputType,
            handler: (InputType, @escaping (SmokeHTTPClient.HTTPResult<OutputType>) -> ()) throws -> (),
            on eventLoop: EventLoop)
            -> EventLoopFuture<OutputType> {
        let promise = eventLoop.newPromise(of: OutputType.self)
        
        func completion(result: HTTPResult<OutputType>) {
            switch result {
            case .error(let error):
                promise.fail(error: error)
            case .response(let output):
                promise.succeed(result: output)
            }
        }
              
        do {
            try handler(input, completion)
        } catch {
            promise.fail(error: error)
        }
                
        return promise.futureResult
    }

    static func handleAsyncWithoutResult<InputType>(
            input: InputType,
            handler: (InputType, @escaping (Error?) -> ()) throws -> (),
            on eventLoop: EventLoop)
            -> EventLoopFuture<Void> {
        let promise = eventLoop.newPromise(of: Void.self)
        
        func completion(error: Error?) {
            if let error = error {
                promise.fail(error: error)
            } else {
                promise.succeed(result: ())
            }
        }
        
        do {
            try handler(input, completion)
        } catch {
            promise.fail(error: error)
        }
        
        return promise.futureResult
    }
}
