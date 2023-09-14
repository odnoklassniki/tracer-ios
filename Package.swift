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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.32/OKTracer.xcframework.zip",
            checksum: "0bddb9e036871e3fcc839cb88a32afc39bfb2e2e939c411f1065c592f4765fe8"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.32/TracerResources.xcframework.zip",
            checksum: "8f5558cb57b277e99c6055fdbb0a1d94f41796393e50298e3bed7c9bda5fa55a")
    ]
)
