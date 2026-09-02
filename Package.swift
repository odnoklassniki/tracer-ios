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
            url: "https://nexus-external.vkteam.ru/repository/okdl-ios-tracer/OKTracer/1.5.2/OKTracer.xcframework.zip",
            checksum: "56d405440103a139bd697084b2eee5927e3a53618cac4efe7a56daffa6d41232"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://nexus-external.vkteam.ru/repository/okdl-ios-tracer/OKTracer/1.5.2/TracerResources.xcframework.zip",
            checksum: "eb5fc20821fd929f66908c2df604ff8592c30ace974c3297f3e2db6db514ccca")
    ]
)
