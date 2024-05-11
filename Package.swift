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
            targets: ["CocoaLUT-iOS"])
    ],
    dependencies: [
        .package(url: "https://github.com/zhanggenning/Objective-C-RegEx-Categories.git", from: "1.0.0"),
        .package(url: "https://github.com/zhanggenning/M13OrderedDictionary.git", from: "1.1.0"),
        .package(url: "https://github.com/zhanggenning/XMLDictionary.git", from: "1.4.1")
    ],
    targets: [
        .target(
            name: "CocoaLUT-iOS",
            dependencies: [
                .product(name: "RegExCategories", package: "Objective-C-RegEx-Categories"),
                .product(name: "M13OrderedDictionary", package: "M13OrderedDictionary"),
                .product(name: "XMLDictionary", package: "XMLDictionary")
            ],
            path: "Classes",
            exclude: ["osx"],
            publicHeadersPath: "."
        )
    ]
)
