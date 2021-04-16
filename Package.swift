// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SwiftToolbox",
    products: [
        .library(
            name: "SwiftToolbox",
            targets: ["SwiftToolbox"])
    ],
    targets: [
        .target(
            name: "SwiftToolbox",
            path: "Sources"),
        .testTarget(
            name: "SwiftToolboxTests",
            dependencies: ["SwiftToolbox"])
    ]
)
