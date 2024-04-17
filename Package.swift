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
            name: "TreasureHuntWebtoon",
            url: "https://github.com/adison-ads/treasure-hunt-ios/releases/download/0.26.4/TreasureHuntWebtoon.zip",
            checksum: "032cb6c9187b25ebc56d7704a3790c24f25759f90c466e53daf31baaa3d563c5")
    ]
)
