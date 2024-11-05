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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.47/OKTracer.xcframework.zip",
            checksum: "101b8af73623d10ca9b8c016028234aeb921ed950dc5a76eb50ad0ede407f6ef"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.47/TracerResources.xcframework.zip",
            checksum: "445698b94a5a8f0190b734f340fb024e435f4d49ddaf36af549ce8fb40acb0dc")
    ]
)
