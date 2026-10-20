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
let sdkVersion = "6.22.1"
let sdkCdnBaseUrl = "https://developers.facebook.com/resources"
let sdkChecksum = "56d5f7757d393f077e135e5f50a10d0db90c34edeeedf6af32938e3c03c566f3"

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
