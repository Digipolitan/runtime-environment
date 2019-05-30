// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "RuntimeEnvironment",
    products: [
        .library(name: "RuntimeEnvironment", targets: ["RuntimeEnvironment"])
    ],
    targets: [
        .target(name: "RuntimeEnvironment"),
        .testTarget(
            name: "RuntimeEnvironmentTests",
            dependencies: [
                "RuntimeEnvironment"
            ]
        )
    ]
)
