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
//  V4Signer.swift
//  SmokeAWSHttp
//
// Based on https://github.com/noppoMan/aws-sdk-swift-core/blob/master/Sources/AWSSDKSwiftCore/Signers/V4.swift
// Licensed under MIT License per https://github.com/noppoMan/aws-sdk-swift-core/blob/c741b253016f49d444a7ab355d869f7a660a890d/LICENSE
//

import Foundation
import SmokeAWSCore

struct V4Signer {
    let credentials: Credentials
    let region: AWSRegion
    let service: String
    let signAllHeaders: Bool
    
    let identifier = "aws4_request"
    let algorithm = "AWS4-HMAC-SHA256"

    func hexEncodedBodyHash(_ data: Data) -> String {
        if data.isEmpty && service == "s3" {
            return "UNSIGNED-PAYLOAD"
        }
        return data.sha256.hexdigest
    }

    init(credentials: Credentials, region: AWSRegion, service: String,
         signAllHeaders: Bool = false) {
        self.credentials = credentials
        self.region = region
        self.service = service
        self.signAllHeaders = signAllHeaders
    }

    func getSignedURL(url: URL, date: Date = Date(), expires: Int = 86400) -> URL {
        let datetime = getXAmzDateValue(date)
        let headers = ["Host": url.hostWithPort!]
        let bodyDigest = hexEncodedBodyHash(Data())
        
        var queries = [
            URLQueryItem(name: "X-Amz-Algorithm", value: algorithm),
            URLQueryItem(name: "X-Amz-Credential", value: credential(datetime).replacingOccurrences(of: "/", with: "%2F")),
            URLQueryItem(name: "X-Amz-Date", value: datetime),
            URLQueryItem(name: "X-Amz-Expires", value: "\(expires)"),
            URLQueryItem(name: "X-Amz-SignedHeaders", value: "host"),
        ]
        
        url.query?.components(separatedBy: "&").forEach {
            var q = $0.components(separatedBy: "=")
            if q.count == 2 {
                queries.append(URLQueryItem(name: q[0], value: q[1]))
            } else {
                queries.append(URLQueryItem(name: q[0], value: nil))
            }
        }
        
        
        queries = queries.sorted { a, b in a.name < b.name }
        
        let url = URL(string: url.absoluteString.components(separatedBy: "?")[0]+"?"+queries.asStringForURL)!
        
        let sig = signature(
            url: url,
            headers: headers,
            datetime: datetime,
            method: "GET",
            bodyDigest: bodyDigest
        )
        
        return URL(string: url.absoluteString+"&X-Amz-Signature="+sig)!
    }

    func getSignedHeaders(url: URL, headers: [String: String], method: String,
                          date: Date = Date(), bodyData: Data) -> [(String, String)] {
        let datetime = getXAmzDateValue(date)
        let bodyDigest = hexEncodedBodyHash(bodyData)
        
        var headersForSign = [
            "x-amz-content-sha256": hexEncodedBodyHash(bodyData),
            "x-amz-date": datetime,
            "Host": url.host!,
        ]
        
        for header in headers {
            headersForSign[header.key] = header.value
        }
        
        if signAllHeaders, let token = self.credentials.sessionToken {
            headersForSign["x-amz-security-token"] = token
        }
        
        headersForSign["Authorization"] = authorization(
            url: url,
            headers: headersForSign,
            datetime: datetime,
            method: method,
            bodyDigest: bodyDigest
        )
        
        if !signAllHeaders, let token = self.credentials.sessionToken {
            headersForSign["x-amz-security-token"] = token
        }
        
        return headersForSign.map { key, value in
            if (key == "Host") {
                return (key, url.hostWithPort!)
            } else {
                return (key, value)
            }
        }
    }

    private func authorization(url: URL, headers: [String: String], datetime: String,
                               method: String, bodyDigest: String) -> String {
        let cred = credential(datetime)
        let shead = signedHeaders(headers)
        
        let sig = signature(
            url: url,
            headers: headers,
            datetime: datetime,
            method: method,
            bodyDigest: bodyDigest
        )
        
        return [
            "AWS4-HMAC-SHA256 Credential=\(cred)",
            "SignedHeaders=\(shead)",
            "Signature=\(sig)",
        ].joined(separator: ", ")
    }

    private func credential(_ datetime: String) -> String {
        return "\(credentials.accessKeyId)/\(credentialScope(datetime))"
    }

    private func signedHeaders(_ headers: [String:String]) -> String {
        var list = Array(headers.keys).map { $0.lowercased() }.sorted()
        if let index = list.index(of: "authorization") {
            list.remove(at: index)
        }
        return list.joined(separator: ";")
    }

    private func canonicalHeaders(_ headers: [String: String]) -> String {
        var list = [String]()
        let keys = Array(headers.keys).sorted(by: <)
        
        for key in keys {
            if key.caseInsensitiveCompare("authorization") != ComparisonResult.orderedSame {
                list.append("\(key.lowercased()):\(headers[key]!)")
            }
        }
        return list.joined(separator: "\n")
    }

    private func signature(url: URL, headers: [String: String],
                           datetime: String, method: String, bodyDigest: String) -> String {
        let secretAccessKey = "AWS4\(self.credentials.secretAccessKey)"
        
        let secretBytes = Array(secretAccessKey.utf8)
        let dateString = String(datetime.prefix(upTo: datetime.index(datetime.startIndex, offsetBy: 8)))
        let date = dateString.hmac(withKey: secretBytes)
        
        let region = self.region.rawValue.hmac(withKey: date)
        let service = self.service.hmac(withKey: region)
        let credentials = identifier.hmac(withKey: service)
        let string = stringToSign(
            url: url,
            headers: headers,
            datetime: datetime,
            method: method,
            bodyDigest: bodyDigest
        )
        
        return string.hmac(withKey: credentials).hexdigest
    }

    private func credentialScope(_ datetime: String) -> String {
        return [
            String(datetime.prefix(upTo: datetime.index(datetime.startIndex, offsetBy: 8))),
            region.rawValue,
            service,
            identifier
        ].joined(separator: "/")
    }

    private func stringToSign(url: URL, headers: [String: String],
                             datetime: String, method: String,
                             bodyDigest: String) -> String {
        
        let canonicalRequestString = canonicalRequest(url: url, headers: headers, method: method, bodyDigest: bodyDigest)
        let canonicalRequestBytes = Array(canonicalRequestString.utf8)
        
        return [
            "AWS4-HMAC-SHA256",
            datetime,
            credentialScope(datetime),
            canonicalRequestBytes.sha256.hexdigest,
        ].joined(separator: "\n")
    }

    private func canonicalRequest(url: URL, headers: [String: String],
                                  method: String, bodyDigest: String) -> String {
        
        let absoluteStringWithoutQuery = url.absoluteString.components(separatedBy: "?")[0]
        
        // make sure we don't drop a trailing '/' from the urlPath
        let urlPath: String
        if let absoluteStringLast = absoluteStringWithoutQuery.last,
            let urlPathLast = url.path.last,
            absoluteStringLast == "/" && urlPathLast != "/" {
                urlPath = url.path + "/"
        } else {
            urlPath = url.path
        }
        
        // make sure the query string is in canonical form required by signing
        let query: String
        if let rawQuery = url.query {
            let queryComponents = rawQuery.split(separator: "&")
            
            let mappedComponents: [String] = queryComponents.map { component in
                if component.index(of: "=") == nil {
                    // query keys without values require '=' at the end
                    return "\(component)="
                } else {
                    return String(component)
                }
            }
            
            query = mappedComponents.joined(separator: "&")
        } else {
            query = ""
        }
        
        return [
            method,
            urlPath,
            query,
            "\(canonicalHeaders(headers))\n",
            signedHeaders(headers),
            bodyDigest
        ].joined(separator: "\n")
    }
}

extension Collection where Iterator.Element == URLQueryItem {
    var asStringForURL: String {
        return self.compactMap({ "\($0.name)=\($0.value ?? "")" }).joined(separator: "&")
    }
}

extension UInt8 {
    public var hexdigest: String {
        return String(format: "%02x", self)
    }
}

extension Collection where Self.Iterator.Element == UInt8 {
    public var hexdigest: String {
        return self.map({ $0.hexdigest }).joined()
    }
}

extension URL {
    public var hostWithPort: String? {
        guard var host = self.host else {
            return nil
        }
        if host.contains("amazonaws.com") {
            return host
        }
        if let port = self.port {
            host+=":\(port)"
        }
        return host
    }
}

