RuntimeEnvironment
=================================

[![Build Status](https://travis-ci.org/Digipolitan/runtime-environment.svg?branch=master)](https://travis-ci.org/Digipolitan/runtime-environment)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/RuntimeEnvironment.svg)](https://img.shields.io/cocoapods/v/RuntimeEnvironment.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Platform](https://img.shields.io/cocoapods/p/RuntimeEnvironment.svg?style=flat)](http://cocoadocs.org/docsets/RuntimeEnvironment)
[![Twitter](https://img.shields.io/badge/twitter-@Digipolitan-blue.svg?style=flat)](http://twitter.com/Digipolitan)

RuntimeEnvironment manage all your environment variable with a specific environment set in your Info.plist file

## Installation

### CocoaPods

To install RuntimeEnvironment with CocoaPods, add the following lines to your `Podfile`.

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0' # or platform :osx, '10.10' if your target is OS X.
use_frameworks!

pod 'RuntimeEnvironment'
```

## The Basics

First you must set the environment mode in your Info.plist file

```xml
<key>Environment</key>
<string>production</string>
```

Authorized environment value are **development**, **staging**, **production**

After that, at runtime you must register all your variable as follow:

```swift
let env = RuntimeEnvironment.shared
env.set("API_KEY", "dsdqsiIDNSIQUdiusqdDSQ")
```

## Advanced

### Variable from dictionary

You can set multiple variable at once using dictionary

```swift
let env = RuntimeEnvironment.shared
env.set([
  "secure": true,
  "baseUrl": "http://localhost"
  ])
```

### Variable from file

2 file format are available: **json** & **plist**

```swift
let env = RuntimeEnvironment.shared
env.setFile("env.prod", format: .json)
```

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for more details!

This project adheres to the [Contributor Covenant Code of Conduct](CODE_OF_CONDUCT.md).
By participating, you are expected to uphold this code. Please report
unacceptable behavior to [contact@digipolitan.com](mailto:contact@digipolitan.com).

## License

RuntimeEnvironment is licensed under the [BSD 3-Clause license](LICENSE).
