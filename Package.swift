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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.50/OKTracer.xcframework.zip",
            checksum: "d2d1563ca979028a28be9b7ca8fa2d8c4ec80539242edf921708558b8cf02866"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.50/TracerResources.xcframework.zip",
            checksum: "b29265ae7def8547d24a879766e813f7bb06d9f5ae48d560804126dfd2623f6c")
    ]
)
