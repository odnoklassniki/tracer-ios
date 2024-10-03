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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.45/OKTracer.xcframework.zip",
            checksum: "4ab4e15862623232b35c7cce2630eef0fe9d3f3752fd27a6058cb20e3cb0b76c"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.45/TracerResources.xcframework.zip",
            checksum: "db0ad088702b6d67e34eeeb0a52bc3d2aed910e8ded43e209d0405a9e147f42b")
    ]
)
