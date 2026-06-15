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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/1.5.1/OKTracer.xcframework.zip",
            checksum: "7e6d37d33d747e610b4c5809d442dc5c8b3b197d8d65daaded57874989cef75f"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/1.5.1/TracerResources.xcframework.zip",
            checksum: "22abf72c94795ce8747c69a7b7e2a3c22727795dca4c1a42bf48650a0e0f8d22")
    ]
)
