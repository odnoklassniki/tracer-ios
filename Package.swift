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
            url: "https://nexus-external.vkteam.ru/repository/okdl-ios-tracer/OKTracer/1.5.3/OKTracer.xcframework.zip",
            checksum: "0641055400be51fcc26b0e8f71083e2771112829b026b1b4aaae7713e8b03229"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://nexus-external.vkteam.ru/repository/okdl-ios-tracer/OKTracer/1.5.3/TracerResources.xcframework.zip",
            checksum: "926ac98da61259faf702b7af25b791e18bf9adf8cf10d7b8a7f8132fbd06edb3")
    ]
)
