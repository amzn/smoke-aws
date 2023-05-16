//
//  S3ClientProtocolV2+listFolder.swift
//  S3Client
//

import S3Model

public extension S3ClientProtocolV2 {
    // Returns all S3 objects within the same S3 "folder" as a given object.
    // If the object identifier provided is a directory, the return value will
    // contain all objects within its parent "folder".
    // Optionally, the caller can pass a filename prefix provider; only objects
    // with the same prefix in the "folder" will be returned.
    @available(macOS 13.0, iOS 16.0, watchOS 9.0, tvOS 16.0, *)
    func listFolder(
        for objectIdentifier: S3ObjectIdentifier,
        fileNamePrefixProvider: (String) throws -> String = { _ in "" }) async throws
    -> [S3ObjectIdentifier] {
        let bucketName = objectIdentifier.bucketName
        let s3Folder = try objectIdentifier.parentPath ?? ""
        let fileName = try objectIdentifier.fileName ?? ""
        let fileNamePrefix = try fileNamePrefixProvider(fileName)
        let listBucketPrefix = s3Folder + fileNamePrefix

        var nextToken: NextToken? = nil
        var objectKeys = Set<String>()
        repeat {
            let request = ListObjectsV2Request(
                bucket: bucketName,
                continuationToken: nextToken,
                prefix: listBucketPrefix)
            let response = try await self.listObjectsV2(input: request)

            // Filter objects from sub-folders
            objectKeys.formUnion((response.contents ?? []).compactMap(\.key)
                .filter { ($0.lastIndex(of: "/") ?? $0.startIndex) <= s3Folder.endIndex })
            nextToken = response.nextContinuationToken
        } while nextToken != nil

        return objectKeys.map { S3ObjectIdentifier(bucketName: bucketName, keyPath: $0) }
    }
}
