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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.49/OKTracer.xcframework.zip",
            checksum: "67503aff769d6463ee89bea0ee289613503694a8d9bda99f10caed9745b01819"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.49/TracerResources.xcframework.zip",
            checksum: "4a1a39e25d62ec52d761c98c1c7d6c3bf2b88858436274d2083f274cc0b18ca8")
    ]
)
