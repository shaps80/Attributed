// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Attributed",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "Attributed",
            targets: ["Attributed"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-markdown", .revision("c9dbdb5")),
    ],
    targets: [
        .target(
            name: "Attributed",
            dependencies: [
                .product(name: "Markdown", package: "swift-markdown")
            ]
        )
    ]
)
