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
            url: "https://nexus.vkteam.ru/repository/raw-tracer-ios-public/OKTracer/1.5.0/OKTracer.xcframework.zip",
            checksum: "6c0034e374e79004e9c709d15183fc338b7ec50a00241ca7bc58a482f29301c1"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://nexus.vkteam.ru/repository/raw-tracer-ios-public/OKTracer/1.5.0/TracerResources.xcframework.zip",
            checksum: "549807f03774db9fe6b166fdf216614bc095f4d8fee61a0ed93af05f8e5000fe")
    ]
)
