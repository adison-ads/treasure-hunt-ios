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
            url: "https://github.com/adison-ads/treasure-hunt-ios/releases/download/0.23.14/TreasureHuntWebtoon.zip",
            checksum: "baaaf0ceb2c798d7411cc1d1fd45a73dcf4287d5ef915364118eed32788d8266")
    ]
)
