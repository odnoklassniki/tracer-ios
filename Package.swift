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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.35/OKTracer.xcframework.zip",
            checksum: "ecefb6c9aa5b12b3464a481bbd2d30f1930c00570052682b116a476d14476b41"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.35/TracerResources.xcframework.zip",
            checksum: "3ba3c3f03dedeb820bdcea0895b18a902c98e00551c9ec8e18e69ce035b4ba68")
    ]
)
