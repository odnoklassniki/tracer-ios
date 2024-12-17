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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.48/OKTracer.xcframework.zip",
            checksum: "c9c3b3300746822fac9baf0eee7cb162278978a08ed4459d5a6e296b8a5b08b2"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.48/TracerResources.xcframework.zip",
            checksum: "5f00d05968b3e2adeb62930a84317ee62c35aa2a75868f775e78a1f965ad5134")
    ]
)
