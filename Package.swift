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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.25.2/OKTracer.xcframework.zip",
            checksum: "cfdaba9fdf1bfde0d27771557f331332de65d14c47eb13325e999e367ac87351"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.25.2/TracerResources.xcframework.zip",
            checksum: "edba624e1e5242cdf9d6c35eea67636c11113fb5d90f52ea59fe50586c12e39a")
    ]
)
