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
//  CloudWatchCounterHandler.swift
//  SmokeAWSMetrics
//

import Metrics
import CloudWatchClient
import CloudWatchModel
import Logging
/**
 Class conforming to `CounterHandler` that emits a CloudWatch metric.
 */
public class CloudWatchCounterHandler: CounterHandler {
    private let cloudWatchClient: CloudWatchClientProtocol
    private let metricName: String
    private let namespace: String
    private let dimensions: [Dimension]?
    private let logger: Logger
    
    public init(cloudWatchClient: CloudWatchClientProtocol,
                metricName: String,
                namespace: String,
                dimensions: [Dimension]?,
                logger: Logger) {
        self.cloudWatchClient = cloudWatchClient
        self.metricName = metricName
        self.namespace = namespace
        self.dimensions = dimensions
        self.logger = logger
    }
    
    public func increment(by increment: Int64) {
        let metricData = MetricDatum(dimensions: self.dimensions,
                                     metricName: self.metricName,
                                     unit: .count,
                                     value: Double(increment))
        let input = PutMetricDataInput(metricData: [metricData],
                                       namespace: self.namespace)
        do {
            try self.cloudWatchClient.putMetricDataAsync(input: input, completion: { error in
                if let error = error {
                    self.logger.error("Unable to submit metric \(self.metricName) to CloudWatch: \(String(describing: error))")
                }
            })
        } catch {
            self.logger.error("Unable to submit metric \(self.metricName) to CloudWatch: \(String(describing: error))")
        }
    }
    
    public func reset() {
        self.logger.warning("Attempting to reset metric \(self.metricName) which is not supported.")
    }
    
    
}
