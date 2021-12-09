// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AttributedMarkdown",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "AttributedMarkdown",
            targets: ["AttributedMarkdown"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-markdown", .branch("main")),
    ],
    targets: [
        .target(
            name: "AttributedMarkdown",
            dependencies: [
                .product(name: "Markdown", package: "swift-markdown")
            ]
        )
    ]
)
