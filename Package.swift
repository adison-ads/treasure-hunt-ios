// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.2.2"
let checksum = "54eec246c9704548e7299a627601feaf7a2be6f3894f71e21c5a3ba9937ed185"
let baseVersion = "1.2.6"
let nativeAdVersion = "1.1.0"

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
