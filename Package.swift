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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.40/OKTracer.xcframework.zip",
            checksum: "40dd3ff7c447aae28def6c0fe1ed8a29cd76f7e04d1367c1391f9b09386afab7"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.40/TracerResources.xcframework.zip",
            checksum: "14240314c5ed550203ae933ff9b7b0d068a86a9e2a98299830de04de8a251dbd")
    ]
)
