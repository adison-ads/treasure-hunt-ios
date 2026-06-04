// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.1.8"
let checksum = "a4f120db365491638c3e5e5a07b0fff994da434d0377fa8cccc4717e359c6dcd"
let baseVersion = "1.2.4"
let nativeAdVersion = "1.0.2"

let package = Package(
    name: "TreasureHuntWebtoon",
    products: [
        .library(
            name: "TreasureHuntWebtoon",
            targets: ["TreasureHuntWebtoon", "TreasureHuntWebtoonTarget"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/adison-ads/adison-offerwall-global-base",
            exact: Version(stringLiteral: baseVersion)),
        .package(
            url: "https://github.com/adison-ads/adison-offerwall-global-native-ad",
            exact: Version(stringLiteral: nativeAdVersion)),
    ],
    targets: [
        .binaryTarget(
            name: "TreasureHuntWebtoon",
            url: "https://github.com/adison-ads/treasure-hunt-ios/releases/download/\(version)/TreasureHuntWebtoon.zip",
            checksum: checksum),
        .target(
            name: "TreasureHuntWebtoonTarget",
            dependencies: [
                .product(name: "AdisonOfferwallGlobalBase", package: "adison-offerwall-global-base"),
                .product(name: "AdisonOfferwallGlobalNativeAd", package: "adison-offerwall-global-native-ad"),
            ],
            path: "Sources"),
    ])
