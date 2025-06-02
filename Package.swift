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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/1.3.0/OKTracer.xcframework.zip",
            checksum: "f628e985c9a8ea0a319aab87fd3637614a8d8e911710003fe4a7415f4d54f7c3"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/1.3.0/TracerResources.xcframework.zip",
            checksum: "d2c852fc085b3eece5ac23b148ce2e556af2272e4a61820f89231697256fae56")
    ]
)
