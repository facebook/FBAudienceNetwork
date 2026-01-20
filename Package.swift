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
let sdkVersion = "6.21.0"
let sdkCdnBaseUrl = "https://developers.facebook.com/resources"
let sdkChecksum = "adb29e88c72658f9871b61ef703c85c4202aac8e7a22e08b309c4688c8a9666f"

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
