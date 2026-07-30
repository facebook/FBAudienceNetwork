# Meta Audience Network iOS SDK

[![Swift Package Manager](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange?style=flat-square)](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange?style=flat-square)

Meta Audience Network allows you to monetize your iOS apps with Facebook ads.

Please make sure that you have completed the [Audience Network Getting Started][1] and [iOS Getting Started][2] guides before you proceed.

## Installation

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.

Once you have your Swift package set up, adding FBAudienceNetwork as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift` or the Package list in Xcode.

#### Package.swift

```swift
dependencies: [
    .package(url: "https://github.com/facebook/FBAudienceNetwork", .upToNextMajor(from: "6.22.0"))
]
```

#### Xcode

1. Open your project in Xcode
2. Go to **File** > **Add Package Dependencies...**
3. Enter the package repository URL: `https://github.com/facebook/FBAudienceNetwork`
4. Select the version rule (e.g., "Up to Next Major Version" from `6.22.0`)
5. Click **Add Package**
6. Select the `FBAudienceNetwork` library and add it to your target

### CocoaPods (deprecated)

Note: CocoaPods trunk [is becoming readonly](https://blog.cocoapods.org/CocoaPods-Specs-Repo/) so Swift Package Manager is the recommended way to install the SDK.

Add the following to your `Podfile`:

```ruby
pod 'FBAudienceNetwork'
```

Then run `pod install` in the project folder from command line to download the latest Audience Network SDK.

## Requirements

- iOS 15.0+
- Swift 5.5+
- Xcode 26 or newer

## Documentation

- [Audience Network Getting Started][1]
- [iOS Getting Started][2]
- [Banner Ads][3]
- [Interstitial Ads][4]
- [Native Ads][5]
- [In-stream Video][8]
- [Rewarded Video][9]
- [Native Banner Ads][10]

## License

See the [LICENSE](./LICENSE) file for more info.

[1]: https://developers.facebook.com/docs/audience-network/getting-started
[2]: https://developers.facebook.com/docs/audience-network/ios
[3]: https://developers.facebook.com/docs/audience-network/ios-banners
[4]: https://developers.facebook.com/docs/audience-network/ios-interstitial
[5]: https://developers.facebook.com/docs/audience-network/ios-native
[7]: https://cocoapods.org/
[8]: https://developers.facebook.com/docs/audience-network/ios/instream-video
[9]: https://developers.facebook.com/docs/audience-network/ios/rewarded-video
[10]: https://developers.facebook.com/docs/audience-network/ios-native-banner
