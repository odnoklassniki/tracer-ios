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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.41/OKTracer.xcframework.zip",
            checksum: "85ffe1a8b91c312e68cf22432f2421d56e211a7d760d5c8477d8a6db3a354fdf"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.41/TracerResources.xcframework.zip",
            checksum: "eac6a6d6779ec48e94b52d6f8e64d18fb94e3e48976369f4d79f8813e7192402")
    ]
)
