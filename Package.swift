// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "PerfectRainbow",
    products: [
        .library(name: "PerfectRainbow", targets: ["PerfectRainbow"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "PerfectRainbow", dependencies: [], path: "Sources"),
        .target(
            name: "RainbowPlayground",
            dependencies: ["PerfectRainbow"],
            path:"Playground"
        ),
        .testTarget(name: "RainbowTests", dependencies: ["PerfectRainbow"], path: "Tests"),
    ]
)
