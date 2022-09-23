---
date: 2022-09-23 15:00
description: Support Policy for SmokeAWS.
tags: support policy
---
# Version support

SmokeAWS will keep versions up-to-date with AWS service models for at least **6 months** after the release of the next major version.

Following these rules, the support level for different SmokeAWS versions are-
1. **SmokeAWS 1.x**: No support since November, 2020.
2. **SmokeAWS 2.x**: Supported.

# Swift Version Support

SmokeAWS will provide support for the two most recent minor versions (X.Y and X.Y-1), verifying this support using continuous integration of all changes for these versions of the Swift toolchain.

## Support Removal

SmokeAWS has two mechanism for removing support for Swift Toolchain versions-
1. A new major version of SmokeAWS may remove support for Swift versions beyond the two most recent versions which are required to be supported.
2. An existing major version of SmokeAWS may remove support for a Swift version **6 months** after that version has stopped being one of the two most recent minor versions of the Swift Toolchain.

Once support has been removed, testing via continuous integration may be removed and no guarantees will be given for compiling the package using this version of the toolchain.

Following these rules, the support level for different Swift Toolchain versions are-
1. **Swift 5.4 and earlier**: No support.
2. **Swift 5.5**: Supported for SmokeAWS 2.x. Support to be removed after 12th of March, 2023.
3. **Swift 5.6**: Supported for SmokeAWS 2.x.
4. **Swift 5.7**: Supported for SmokeAWS 2.x.

# Runtime Support

SmokeAWS will provide support for the following runtimes, verifying this support using continuous integration of all changes for these runtimes.  Verification of support through continuous integration for each of these runtimes will occur for five years from their release, unless otherwise stated-
1. **Ubuntu 16.04 and earlier**: No support.
2. **Ubuntu 18.04**: CI verification to be removed after April, 2023.
3. **Ubuntu 20.04**: CI verification to be removed after April, 2025.
4. **Amazon Linux 2**: CI verification to be removed after June, 2023.
5. **CentOS 8**: CI verification to be removed after November, 2024.

# Development Support

Currently, SmokeAWS supports macOS as a development environment and will provide support for **at least** the two most recent macOS versions. For these two versions of macOS, SmokeAWS will ensure debug support as long as XCode does.

Following these rules, SmokeAWS currently requires ***macOS Catalina (10.15)*** or higher.

