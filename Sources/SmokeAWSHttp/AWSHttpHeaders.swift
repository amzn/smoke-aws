//
//  AWSHttpHeaders
//  SmokeAWSHttp
//

import Foundation

public func getXAmzDateValue(_ date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyyMMdd'T'HHmmss'Z'"
    formatter.timeZone = TimeZone(abbreviation: "UTC")
    formatter.locale = Locale(identifier: "en_US_POSIX")
    return formatter.string(from: date)
}
