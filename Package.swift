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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/1.4.0/OKTracer.xcframework.zip",
            checksum: "219e909064471ec727c53cbe8b4b3ec26cb183aff063164910991255285584c2"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/1.4.0/TracerResources.xcframework.zip",
            checksum: "552e6d5d561e07b24732cab92934adec6afac16a17fd2cd8eca1f8145061fbd0")
    ]
)
