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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.38/OKTracer.xcframework.zip",
            checksum: "54b961e2610d816f46d4a79f40ae24193ac49d16cf966049b76bf891ea86a5c7"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.38/TracerResources.xcframework.zip",
            checksum: "57d4e27ee1b401c125e967fd31c75b2efbed4bd47b9e1b1a20caea34033a6f64")
    ]
)
