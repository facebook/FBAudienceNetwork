// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import PackageDescription

let sdkName = "FBAudienceNetwork"
let sdkVersion = "6.21.1"
let sdkCdnBaseUrl = "https://developers.facebook.com/resources"
let sdkChecksum = "c8b3fa80b51d5511a0fe41039b924cc7eba7cbf47ca5cff67e89706034ce0316"

let package = Package(
  name: sdkName,
  platforms: [.iOS(.v13)],
  products: [
    .ansdk
  ],
  targets: [
    .ansdk
  ]
)

extension Product {
  static let ansdk = library(name: sdkName, targets: [sdkName])
}

extension Target {
  static let ansdk = binaryTarget(
    name: sdkName,
    url: "\(sdkCdnBaseUrl)/\(sdkName)-\(sdkVersion)-SPM.zip",
    checksum: sdkChecksum
  )
}
