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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/1.1.1/OKTracer.xcframework.zip",
            checksum: "e43214de0f3674c2af44a23e4fc54786410dd5f4d5b3b9faf41d24f9e7319c2f"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/1.1.1/TracerResources.xcframework.zip",
            checksum: "fabb8757d6b02b8c22e807abb5ec8fcc5c711c7bf413b3a44a18e47a19550cc7")
    ]
)
