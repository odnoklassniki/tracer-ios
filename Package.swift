// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "OKTracerPackage",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "OKTracerPackage",
            targets: ["OKTracer", "OKTracerResources"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "OKTracer",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.33/OKTracer.xcframework.zip",
            checksum: "f68f56f933780d8be4f0489c619c6430f4538c7d9fdf01c9201778ae26ea0f72"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.33/TracerResources.xcframework.zip",
            checksum: "02f5c7d5d1b6ce30a81a10a104651d45785ee5902bb0b20e00e0b036e90ceed6")
    ]
)
