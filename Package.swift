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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/1.1.0/OKTracer.xcframework.zip",
            checksum: "19a3a6647af0b74845e166c7382dfbcceb8231beb3392aa7b4cc9d685551e395"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/1.1.0/TracerResources.xcframework.zip",
            checksum: "5d23b411ffb6089f8ea86db7be2704bf1a5a009af38d2a47f2a3745f2816edd1")
    ]
)
