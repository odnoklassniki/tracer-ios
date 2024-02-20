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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.37/OKTracer.xcframework.zip",
            checksum: "7f2e46123f9ccf9d1fae539bd6fa52b58bcab46d37db663de40fb9c806ca5de0"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.37/TracerResources.xcframework.zip",
            checksum: "8a438f0d5419f45c08325a0d6b22aa3066aa4a76cffcdfec17e3ca0a8b4ad326")
    ]
)
