// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "fitbenchmarks",
    platforms: [
            .macOS(.v10_14), .iOS(.v11)
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/roznet/FitFileParser", .branch("main")),
        
        .package(url: "https://github.com/FitnessKit/FitDataProtocol", from: "2.1.0"),
        
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.3.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "fitparser",
            dependencies: [   .product(name: "FitFileParser", package: "FitFileParser"),
                              .product(name: "ArgumentParser", package: "swift-argument-parser")]
        ),
        .target(
            name: "fitdataprotocol",
            dependencies: [ .product(name: "FitDataProtocol", package: "FitDataProtocol"),
                            .product(name: "ArgumentParser", package: "swift-argument-parser")]
        ),
    ]
)
