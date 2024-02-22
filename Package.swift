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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.37.2/OKTracer.xcframework.zip",
            checksum: "bef2f3738b00157a6f56b1fabce890f97e1c645582e13b1f4d9c7acbabf72a38"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.37.2/TracerResources.xcframework.zip",
            checksum: "17bd32432d71f3571cf69abd4310732f0ad4f5c068afc22a67d9f6eae921d5cd")
    ]
)
