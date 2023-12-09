// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GodotKit",
    platforms: [
        .macOS(.v13),
        .iOS (.v15),
    ],
    products: [
        .library(
            name: "GodotKit",
            type: .dynamic,
            targets: ["GodotKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/migueldeicaza/SwiftGodot.git", from: "0.3.2"),
    ],
    targets: [
        .target(
            name: "GodotKit",
            dependencies: [
                .product(name: "SwiftGodot", package: "SwiftGodot"),
            ],
            swiftSettings: [.unsafeFlags(["-suppress-warnings"])]
        ),
        .testTarget(
            name: "GodotKitTests",
            dependencies: ["GodotKit"]
        ),
    ]
)
