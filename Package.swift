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
            checksum: "28e4992c454d321e18dd51dbeb3aaf041dcdc07d162c533484183a41e5f222fe"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.25.2/TracerResources.xcframework.zip",
            checksum: "4cee9abc33ab5931dd77f7ccce040ed395943fb0284165fbc36cbb59e12b656f")
    ]
)
