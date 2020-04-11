// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "EXECUTABLE-NAME",
    products: [
        .executable(
            name: "EXECUTABLE-NAME",
            targets: ["EXECUTABLE-NAME"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser",
                 .upToNextMinor(from: "0.0.4"))
    ],
    targets: [
        .target(
            name: "EXECUTABLE-NAME",
            dependencies: [
                .product(name: "ArgumentParser",
                         package: "swift-argument-parser")
            ]
        ),
        .testTarget(
            name: "EXECUTABLE-NAMETests",
            dependencies: ["EXECUTABLE-NAME"]
        )
    ]
)
