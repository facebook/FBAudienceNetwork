// swift-tools-version:5.5
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
let sdkVersion = "6.22.0"
let sdkCdnBaseUrl = "https://developers.facebook.com/resources"
let sdkChecksum = "4d84bf1e404a83852a93af2ae73e22e45bb2b11e0a9a445c3b461173a5d6aec3"

let package = Package(
  name: sdkName,
  platforms: [.iOS(.v15)],
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
