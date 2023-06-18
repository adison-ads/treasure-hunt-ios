// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TreasureHunt",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TreasureHunt",
            targets: ["TreasureHunt"]),
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
            url: "https://github.com/adison-ads/treasure-hunt-ios/releases/download/v0.11.0/TreasureHunt.zip",
            checksum: "5d63c903d6c5770e1a7c5a0586b0e84fe62552a99ef11b1f04cf94b10fa07bfe")
    ]
)
