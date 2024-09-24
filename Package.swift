// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PackageLibrary",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PackageLibrary",
            targets: ["PackageLibrary"]),
            
    ],
    dependencies: [
        .package(url: "https://github.com/badrinathvm/StepperView.git", .upToNextMajor(from: "1.6.7")),
        .package(url: "https://github.com/heestand-xyz/PolyKit.git", from: "2.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "PackageLibrary",
            dependencies: ["StepperView", "PolyKit"]),
        .testTarget(
            name: "PackageLibraryTests",
            dependencies: ["PackageLibrary"]),
    ]
)
