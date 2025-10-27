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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/1.4.1/OKTracer.xcframework.zip",
            checksum: "266246b7ce3599cd9eabbb745416c163d3705c1bc39be6a56138f6ff33e557e4"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/1.4.1/TracerResources.xcframework.zip",
            checksum: "1a10985cf76c253574b4050618dae4919d6647279bdabab743871b13554d8f7a")
    ]
)
