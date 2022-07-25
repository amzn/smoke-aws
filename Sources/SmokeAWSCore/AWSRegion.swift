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
//  AWSRegion.swift
//  SmokeAWSCore
//

import Foundation

/**
 Enumeration of the AWS Regions.
 */
public enum AWSRegion: String, Sendable {
    case us_east_1 = "us-east-1"
    case us_east_2 = "us-east-2"
    case us_west_1 = "us-west-1"
    case us_west_2 = "us-west-2"
    case ca_central_1 = "ca-central-1"
    case ap_south_1 = "ap-south-1"
    case ap_northeast_2 = "ap-northeast-2"
    case ap_southeast_1 = "ap-southeast-1"
    case ap_southeast_2 = "ap-southeast-2"
    case ap_northeast_1 = "ap-northeast-1"
    case eu_central_1 = "eu-central-1"
    case eu_west_1 = "eu-west-1"
    case eu_west_2 = "eu-west-2"
    case sa_east_1 = "sa-east-1"
}
