// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIViewToImage",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "SwiftUIViewToImage",
            targets: ["SwiftUIViewToImage"]),
    ],
    targets: [
        .target(
            name: "SwiftUIViewToImage",
            dependencies: []),
        .testTarget(
            name: "SwiftUIViewToImageTests",
            dependencies: ["SwiftUIViewToImage"]),
    ]
)
