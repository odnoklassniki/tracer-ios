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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/1.0.0/OKTracer.xcframework.zip",
            checksum: "dffeb1cd2f62de54cc43590acd4d0a01e444aca89928562789261abd21e8c2f8"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/1.0.0/TracerResources.xcframework.zip",
            checksum: "0ae67bf6e453002062de242e35d0a284af6596c80402add7f68631e4f22ba5f7")
    ]
)
