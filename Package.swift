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
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.46/OKTracer.xcframework.zip",
            checksum: "65eb28ddb348fe01b7208847303b0e693b4f977ea44e1aa9352c13aca8cf7326"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.46/TracerResources.xcframework.zip",
            checksum: "9d665c84f992ebca7b5fd57c06857f2096a0c59ceb89729f7957bed705bf764c")
    ]
)
