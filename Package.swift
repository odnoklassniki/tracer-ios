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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.43/OKTracer.xcframework.zip",
            checksum: "76562c357eaa0d7e0b8681c13d9828c0bd698c8848838e1df018ae6cfc1c382f"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.43/TracerResources.xcframework.zip",
            checksum: "8c6a24630e05a0eb98d6e9a92581714e1b9b2c860deab8a41e9b1531cbb5d399")
    ]
)
