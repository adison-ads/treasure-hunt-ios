// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TreasureHuntWebtoon",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TreasureHuntWebtoon",
            targets: ["TreasureHuntWebtoon"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "TreasureHunt",
            url: "https://github.com/adison-ads/treasure-hunt-ios/releases/download/v0.11.8/TreasureHuntWebtoon.zip",
            checksum: "fba8a1cd00bf14eb61df5e8477865c533a6e1a36a4f9422a3e3cbe2384ec807d")
    ]
)
