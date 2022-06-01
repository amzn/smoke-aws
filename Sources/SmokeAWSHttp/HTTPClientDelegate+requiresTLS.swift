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
//  HTTPClientDelegate+requiresTLS.swift
//  SmokeAWSHttp
//

private let securePort = 443
private let securePortModulo = 1000

public struct AWSHTTPClientDelegate {
    public static func requiresTLS(forEndpointPort endpointPort: Int) -> Bool {
        // returns that TLS should be used for ports 443, 4443 etc
        return (endpointPort % securePortModulo == securePort)
    }
}
