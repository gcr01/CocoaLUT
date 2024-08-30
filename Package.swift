// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CocoaLUT",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "CocoaLUT",
            targets: ["CocoaLUT"])
    ],
    targets: [
        .target(
            name: "CocoaLUT",
            path: "Classes",
            publicHeadersPath: "."
        )
    ]
)
