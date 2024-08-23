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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.44/OKTracer.xcframework.zip",
            checksum: "69fd72680eaeb39860d5e533739ca1ae9ba0f19068ac730ade3e9c76d6673da4"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.44/TracerResources.xcframework.zip",
            checksum: "9d78a327cbd6efa4bb974da1f1b0bb20af58ef1e0fcc088800a3770f0668d185")
    ]
)
