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
//  CloudWatchCounterHandler.swift
//  SmokeAWSMetrics
//

import Foundation
import Metrics
import CloudWatchClient
import CloudWatchModel
import Logging
/**
 Class conforming to `CounterHandler` that emits a CloudWatch metric.
 */
internal class CloudWatchCounterHandler<QueueType: MetricsQueue>: CounterHandler {
    private let cloudWatchPendingMetricsQueue: QueueType
    private let metricName: String
    private let namespace: String
    private let dimensions: [CloudWatchModel.Dimension]?
    private let logger: Logger
    
    init(cloudWatchPendingMetricsQueue: QueueType,
                metricName: String,
                namespace: String,
                dimensions: [CloudWatchModel.Dimension]?,
                logger: Logger) {
        self.cloudWatchPendingMetricsQueue = cloudWatchPendingMetricsQueue
        self.metricName = metricName
        self.namespace = namespace
        self.dimensions = dimensions
        self.logger = logger
    }
    
    func increment(by increment: Int64) {
        let metricData = MetricDatum(dimensions: self.dimensions,
                                     metricName: self.metricName,
                                     timestamp: Date().iso8601,
                                     unit: .count,
                                     value: Double(increment))
        
        self.cloudWatchPendingMetricsQueue.submit(namespace: self.namespace, data: metricData)
    }
    
    func reset() {
        self.logger.warning("Attempting to reset metric \(self.metricName) which is not supported.")
    }
    
    
}
