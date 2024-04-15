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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.39/OKTracer.xcframework.zip",
            checksum: "011ecce8e997249c25d24be95035bc0d0d2b58472257fa4de6fa8eee935f6957"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.39/TracerResources.xcframework.zip",
            checksum: "07f34abca8f07bd99d6de51ace24c4d36c308f2348ab006b6f23ae976dfcfb3f")
    ]
)
