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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/1.2.0/OKTracer.xcframework.zip",
            checksum: "f68c5929a6439d3aae73f67bbc66c6b75f7f022e50990405233d9da971736f2c"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/1.2.0/TracerResources.xcframework.zip",
            checksum: "67079937f1ac27090f0c133737795127556e081f0bf6fd788a511249d010817c")
    ]
)
