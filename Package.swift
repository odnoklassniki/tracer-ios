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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.42/OKTracer.xcframework.zip",
            checksum: "091ea3e10cc478aebb7d01660ef025fbba036336095724ad4fa8a4c7bdf83df4"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.42/TracerResources.xcframework.zip",
            checksum: "97a430888f14af76db7c0ec03c0d67b188994cff5216ccbd14e62824b8ea907e")
    ]
)
