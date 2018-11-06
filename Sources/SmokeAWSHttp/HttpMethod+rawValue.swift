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
//  HttpMethod+rawValue.swift
//  SmokeAWSHttp
//

import Foundation
import NIOHTTP1

extension HTTPMethod {
    /// Returns the value of this HTTP method
    var rawValue: String {
        switch self {
        case .GET:
            return "GET"
        case .PUT:
            return "PUT"
        case .ACL:
            return "ACL"
        case .HEAD:
            return "HEAD"
        case .POST:
            return "POST"
        case .COPY:
            return "COPY"
        case .LOCK:
            return "LOCK"
        case .MOVE:
            return "MOVE"
        case .BIND:
            return "BIND"
        case .LINK:
            return "LINK"
        case .PATCH:
            return "PATCH"
        case .TRACE:
            return "TRACE"
        case .MKCOL:
            return "MKCOL"
        case .MERGE:
            return "MERGE"
        case .PURGE:
            return "PURGE"
        case .NOTIFY:
            return "NOTIFY"
        case .SEARCH:
            return "SEARCH"
        case .UNLOCK:
            return "UNLOCK"
        case .REBIND:
            return "REBIND"
        case .UNBIND:
            return "UNBIND"
        case .REPORT:
            return "REPORT"
        case .DELETE:
            return "DELETE"
        case .UNLINK:
            return "UNLINK"
        case .CONNECT:
            return "CONNECT"
        case .MSEARCH:
            return "MSEARCH"
        case .OPTIONS:
            return "OPTIONS"
        case .PROPFIND:
            return "PROPFIND"
        case .CHECKOUT:
            return "CHECKOUT"
        case .PROPPATCH:
            return "PROPPATCH"
        case .SUBSCRIBE:
            return "SUBSCRIBE"
        case .MKCALENDAR:
            return "MKCALENDAR"
        case .MKACTIVITY:
            return "MKACTIVITY"
        case .UNSUBSCRIBE:
            return "UNSUBSCRIBE"
        case .RAW(let value):
            return value
        }
    }
}
