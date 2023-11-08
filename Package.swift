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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.35.0.1/OKTracer.xcframework.zip",
            checksum: "ff22f905b561f6636116698d04bfad1eb2b3a35dc5fd97ae344b27d92dd0a076"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.35.0.1/TracerResources.xcframework.zip",
            checksum: "e716c559a811ae0651494fd00b0439b3cbe6f673bd6049e9da9ed7b890aab1bf")
    ]
)
