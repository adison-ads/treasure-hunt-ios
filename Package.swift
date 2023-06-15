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
            url: "https://github.com/adison-ads/treasure-hunt-ios/releases/download/v0.10.2/TreasureHunt.zip",
            checksum: "c056f1802cef450f43b5026b5a44dd012a8325e9b9130947828392e9f9ed93ce")
    ]
)
