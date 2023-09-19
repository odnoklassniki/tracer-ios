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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.34/OKTracer.xcframework.zip",
            checksum: "31dc7f956e9a9f8a09ff5057576fc572d661e471bc82c8d355ff5614e01a0702"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.34/TracerResources.xcframework.zip",
            checksum: "0b431b77c19e045778223f832bbf5a954b958e90794e2d02308660a759432418")
    ]
)
